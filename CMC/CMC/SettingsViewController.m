//
//  SettingsViewController.m
//  CMC
//
//  Created by Christopher Rockwell on 12/12/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "SettingsViewController.h"
#import <CoreData/CoreData.h>

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
NSUbiquitousKeyValueStore *cloudStore;
NSMutableArray *dataArray;
NSString *iCloudEnabled;
NSMutableArray *info;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    dataArray = [[NSMutableArray alloc] init];
    info = [[NSMutableArray alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {

    // check default to see if iCloud is enabled
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
        iCloudEnabled = [NSString stringWithFormat:@"%@", [defaults objectForKey:@"iCloudEnabled"]];
        if ([iCloudEnabled isEqualToString:@"YES"]) {
            [iCloudSwitch setOn:true];
        } else {
            [iCloudSwitch setOn:false];
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ran when iCloud switch is changed
- (IBAction)onSwitch:(id)sender {
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    if (iCloudSwitch.isOn) {
        [defaults setObject:@"YES" forKey:@"iCloudEnabled"];
        [defaults synchronize];
        // save all data to iCloud
        NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Info"];
        info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
        for (int i = 0; i < [info count]; i++) {
            NSManagedObject *infoObj = [info objectAtIndex:i];
            [dataArray addObject:[infoObj valueForKey:@"conversions"]];
            if (i == info.count - 1) {
                [cloudStore setArray: dataArray forKey:@"conversions"];
                [cloudStore synchronize];
            }
        }
    } else {
        [defaults setObject:@"NO" forKey:@"iCloudEnabled"];
        [defaults synchronize];
        UIAlertView *removeDataAlert = [[UIAlertView alloc] initWithTitle:@"Remove iCloud Data"
                                                               message:@"Would you like to delete all your data from iCloud?"
                                                              delegate:self
                                                     cancelButtonTitle:@"Keep Data"
                                                     otherButtonTitles: @"Remove Data", nil];
        [removeDataAlert setTag:2];
        [removeDataAlert show];
    }
}

// determine settings selection
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (alertView.tag == 2) {
        if (buttonIndex == 1) {
            // delete button clicked
            UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Remove iCloud Data"
                                                                  message:@"Are you sure? This cannot be undone."
                                                                 delegate:self
                                                        cancelButtonTitle:@"No"
                                                        otherButtonTitles:@"Yes", nil];
            [deleteAlert setTag:3];
            [deleteAlert show];
        }
    }
    
    if (alertView.tag == 3) {
        if (buttonIndex == 1) {
            // remove all data from iCloud
            [dataArray removeAllObjects];
            [cloudStore setArray: dataArray forKey:@"conversions"];
            [cloudStore setArray: dataArray forKey:@"us_imp_substitutions"];
            [cloudStore setArray: dataArray forKey:@"metric_substitutions"];
            [cloudStore synchronize];
        }
    }
}

// iCloud restore button clicked
- (IBAction)iCloudClick:(id)sender {
    cloudStore = [NSUbiquitousKeyValueStore defaultStore];
    NSArray *result = [cloudStore arrayForKey:@"conversions"];
    NSArray *result2 = [cloudStore arrayForKey:@"us_imp_substitutions"];
    NSArray *result3 = [cloudStore arrayForKey:@"metric_substitutions"];
    if (result.count > 0 || result2.count > 0 || result3.count > 0) {
        // save data from iCloud to Core Data
        for (int i = 0; i < result.count; i++) {
            NSManagedObjectContext *context = [self managedObjectContext];
            NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Info" inManagedObjectContext:context];
            [newInfo setValue:[result objectAtIndex:i] forKey:@"conversions"];
            NSError *error = nil;
            // Save the object to persistent store
            if (![context save:&error]) {
                NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
            }
            
            // save all data to iCloud 
            if (i == result.count - 1) {
                NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
                NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Info"];
                info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
                for (int i = 0; i < [info count]; i++) {
                    NSManagedObject *infoObj = [info objectAtIndex:i];
                    [dataArray addObject:[infoObj valueForKey:@"conversions"]];
                    if (i == info.count - 1) {
                        [cloudStore setArray: dataArray forKey:@"conversions"];
                        [cloudStore synchronize];
                    }
                }
            }
        }
        
        [self restoreUsImp];
        [self restoreMetric];
        
        // iCloud data restore
        UIAlertView *hasDataAlert = [[UIAlertView alloc] initWithTitle:@"iCloud Data Restored"
                                                              message:@""
                                                             delegate:nil
                                                    cancelButtonTitle:@"Ok"
                                                    otherButtonTitles: nil];
        [hasDataAlert show];
    } else {
        // no iCloud data
        UIAlertView *noDataAlert = [[UIAlertView alloc] initWithTitle:@"No iCloud Data"
                                                              message:@"Sorry there is no iCloud data available."
                                                             delegate:nil
                                                    cancelButtonTitle:@"Ok"
                                                    otherButtonTitles: nil];
        [noDataAlert show];
    }
}

// restore the data for the us and imperial substitution
- (void)restoreUsImp {
    NSArray *result = [cloudStore arrayForKey:@"us_imp_substitutions"];
    if (result.count > 0) {
        // save data from iCloud to Core Data
        for (int i = 0; i < result.count; i++) {
            NSManagedObjectContext *context = [self managedObjectContext];
            NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Us_Imp" inManagedObjectContext:context];
            [newInfo setValue:[result objectAtIndex:i] forKey:@"us_imp_substitutions"];
            NSError *error = nil;
            // Save the object to persistent store
            if (![context save:&error]) {
                NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
            }
        }
    }
}

// restore the data for the metric substitution
- (void)restoreMetric {
    NSArray *result = [cloudStore arrayForKey:@"metric_substitutions"];
    if (result.count > 0) {
        // save data from iCloud to Core Data
        for (int i = 0; i < result.count; i++) {
            NSManagedObjectContext *context = [self managedObjectContext];
            NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Metric" inManagedObjectContext:context];
            [newInfo setValue:[result objectAtIndex:i] forKey:@"metric_substitutions"];
            NSError *error = nil;
            // Save the object to persistent store
            if (![context save:&error]) {
                NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
            }
        }
    }
}

- (IBAction)onBackClick:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
