//
//  ThirdViewController.m
//  CMC
//
//  Created by Christopher Rockwell on 11/20/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "ThirdViewController.h"
#import <CoreData/CoreData.h>

@interface ThirdViewController ()
@property (strong) NSMutableArray *info;

@end

@implementation ThirdViewController
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
NSMutableArray *saves;
NSUbiquitousKeyValueStore *cloudStore;
NSString *iCloudEnabled;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    saves = [[NSMutableArray alloc] init];
    cloudStore = [NSUbiquitousKeyValueStore defaultStore];
}

- (void)viewDidAppear:(BOOL)animated {
    // Fetch the info from persistent data store
    [saves removeAllObjects];
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Info"];
    self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    
    for (int i = 0; i < [self.info count]; i++) {
        NSManagedObject *infoObj = [self.info objectAtIndex:i];
        [saves addObject:[infoObj valueForKey:@"conversions"]];
        if (i == [self.info count] - 1) {
            [myTableView reloadData];
        }
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [doneBtn setHidden:true];
    [myTableView setEditing:NO animated:YES];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // delete item from table view
        NSManagedObject *managedObject = [self.info objectAtIndex:indexPath.row];
        [self.managedObjectContext deleteObject:managedObject];
        [self.managedObjectContext save:nil];
        [saves removeObjectAtIndex:indexPath.row];
        
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        
        // check to see if iCloud is enabled
        if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
            iCloudEnabled = [NSString stringWithFormat:@"%@", [defaults objectForKey:@"iCloudEnabled"]];
            if ([iCloudEnabled isEqualToString:@"YES"]) {
                // save data to iCloud
                [cloudStore setArray: saves forKey:@"conversions"];
                [cloudStore synchronize];
            }
        } else {
            // save data to iCloud by default
            [cloudStore setArray: saves forKey:@"conversions"];
            [cloudStore synchronize];
        }
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [doneBtn setHidden:false];
    [tableView setEditing:YES animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return saves.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    [cell.textLabel setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.text = [saves objectAtIndex:indexPath.row];
    
    return cell;
}

// display delete alert
- (IBAction)onClick:(id)sender {
    UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Delete All Saves"
                                                      message:@"*Tap item or Swipe left to delete a single item*"
                                                     delegate:self
                                            cancelButtonTitle:@"Cancel"
                                            otherButtonTitles:@"Delete All Saves", nil];
    [deleteAlert show];
}

// ran when check button is clicked to stop table view editing
- (IBAction)onDoneClick:(id)sender {
    [doneBtn setHidden:true];
    [myTableView setEditing:NO animated:YES];
}

// determines alert selection
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (alertView.tag == 3) {
        if (buttonIndex == 0) {
            // no button clicked
        } else {
            // yes button clicked
            NSInteger savesCount = saves.count;
            for (int i = 0; i < savesCount; i++) {
                NSManagedObject *managedObject = [self.info objectAtIndex:i];
                [self.managedObjectContext deleteObject:managedObject];
                [self.managedObjectContext save:nil];
                
                if (i == savesCount - 1) {
                    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
                    if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
                        if ([iCloudEnabled isEqualToString:@"YES"]) {
                            // remove all data from iCloud
                            [saves removeAllObjects];
                            [cloudStore setArray: saves forKey:@"conversions"];
                            [cloudStore synchronize];
                        } else {
                            [saves removeAllObjects];
                        }
                        [myTableView reloadData];
                    } else {
                        // remove all data from iCloud by default
                        [saves removeAllObjects];
                        [cloudStore setArray: saves forKey:@"conversions"];
                        [cloudStore synchronize];
                        [myTableView reloadData];
                    }
                }
            }
        }
    } else {
        if (buttonIndex == 0) {
            // cancel button clicked
        } else if (buttonIndex == 1) {
            // delete button clicked
            UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Delete All Saves"
                                                                  message:@"Are you sure? This cannot be undone.\n Swipe left/ Tap item to delete single item from saves"
                                                                 delegate:self
                                                        cancelButtonTitle:@"No"
                                                        otherButtonTitles:@"Yes", nil];
            [deleteAlert setTag:3];
            [deleteAlert show];
            
        }
    }
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
