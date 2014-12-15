//
//  SecondViewController.m
//  CMC
//
//  Created by Christopher Rockwell on 11/17/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "SecondViewController.h"
#import <CoreData/CoreData.h>

@interface SecondViewController ()
@property (strong) NSMutableArray *info;

@end

@implementation SecondViewController
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
NSMutableArray *saves;
NSArray *subs;
NSUbiquitousKeyValueStore *cloudStore;
NSString *iCloudEnabled;
NSMutableArray *searchResults;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cloudStore = [NSUbiquitousKeyValueStore defaultStore];
}

- (void)viewWillAppear:(BOOL)animated {
    
    // check default to see if iCloud is enabled
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
        iCloudEnabled = [NSString stringWithFormat:@"%@", [defaults objectForKey:@"iCloudEnabled"]];
    }
    
    saves = [[NSMutableArray alloc] init];
    [saves removeAllObjects];
    searchResults = [[NSMutableArray alloc] init];
    
    // load substitutions
    [self loadData];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [doneBtn setHidden:true];
    [doneBtn2 setHidden:true];
    [addBtn setHidden:false];
    [addBtn2 setHidden:false];
    [_myTableView setEditing:NO animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ran when add button is clicked
- (IBAction)onAddClick:(id)sender {
    
    UIAlertView * addAlert = [[UIAlertView alloc] initWithTitle:@"Add Substitution" message:@"Please enter your substitution:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Save", nil];
    addAlert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField * alertTextField = [addAlert textFieldAtIndex:0];
    alertTextField.placeholder = @"Enter your substitution";
    [addAlert setTag:5];
    [addAlert show];
}

// ran when segment control changed
- (IBAction)onChange:(id)sender {
    [self loadData];
}

- (void)loadData {
    if (subSeg.selectedSegmentIndex == 0) {
        [saves removeAllObjects];
        NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Us_Imp"];
        self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
        
        if (self.info.count > 0) {
            for (int i = 0; i < [self.info count]; i++) {
                NSManagedObject *infoObj = [self.info objectAtIndex:i];
                [saves addObject:[infoObj valueForKey:@"us_imp_substitutions"]];
                if (i == [self.info count] - 1) {
                    [_myTableView reloadData];
                }
            }
        } else {
            [_myTableView reloadData];
        }
    } else {
        [saves removeAllObjects];
        NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Metric"];
        self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
        
        if (self.info.count > 0) {
            for (int i = 0; i < [self.info count]; i++) {
                NSManagedObject *infoObj = [self.info objectAtIndex:i];
                [saves addObject:[infoObj valueForKey:@"metric_substitutions"]];
                if (i == [self.info count] - 1) {
                    [_myTableView reloadData];
                }
            }
        } else {
            [_myTableView reloadData];
        }
    }
}


- (IBAction)onDeleteClick:(id)sender {
    UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Delete All Substitutions"
                                                            message:@"*Tap item or Swipe left to delete a single item*"
                                                           delegate:self
                                                  cancelButtonTitle:@"Cancel"
                                                  otherButtonTitles:@"Delete All Substitutions", nil];
    [deleteAlert show];
}

// determines alert selection
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (alertView.tag == 3) {
        if (buttonIndex == 0) {
            // no button clicked
        } else {
            // yes button clicked
            if (subSeg.selectedSegmentIndex == 0) {
                NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
                NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Us_Imp"];
                self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
            } else {
                NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
                NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Metric"];
                self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
            }
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
                            if (subSeg.selectedSegmentIndex == 0) {
                                [cloudStore setArray: saves forKey:@"us_imp_substitutions"];
                            } else {
                                [cloudStore setArray: saves forKey:@"metric_substitutions"];
                            }
                            [cloudStore synchronize];
                        } else {
                            [saves removeAllObjects];
                        }
                        [_myTableView reloadData];
                    } else {
                        // remove all data from iCloud by default
                        [saves removeAllObjects];
                        if (subSeg.selectedSegmentIndex == 0) {
                            [cloudStore setArray: saves forKey:@"us_imp_substitutions"];
                        } else {
                            [cloudStore setArray: saves forKey:@"metric_substitutions"];
                        }
                        [cloudStore synchronize];
                        [_myTableView reloadData];
                    }
                }
            }
        }
    } else if (alertView.tag == 5) {
        if (buttonIndex == 1) {
            [saves addObject:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text]];
            [_myTableView reloadData];
            
            if (subSeg.selectedSegmentIndex == 0) {
                // save entry to Core Data
                NSManagedObjectContext *context = [self managedObjectContext];
                NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Us_Imp" inManagedObjectContext:context];
                [newInfo setValue:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text] forKey:@"us_imp_substitutions"];
                NSError *error = nil;
                // Save the object to persistent store
                if (![context save:&error]) {
                    NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
                }
            } else {
                // save entry to Core Data
                NSManagedObjectContext *context = [self managedObjectContext];
                NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Metric" inManagedObjectContext:context];
                [newInfo setValue:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text] forKey:@"metric_substitutions"];
                NSError *error = nil;
                // Save the object to persistent store
                if (![context save:&error]) {
                    NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
                }
            }
            
            // check to see if iCloud is enabled
            NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
            if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
                if ([iCloudEnabled isEqualToString:@"YES"]) {
                    // save entry to iCloud
                    NSMutableArray *iCloudSaveArray = [[NSMutableArray alloc] init];
                    NSArray *result;
                    if (subSeg.selectedSegmentIndex == 0) {
                        result = [cloudStore arrayForKey:@"us_imp_substitutions"];
                        if (result != nil) {
                            for (int i = 0; i < result.count; i++) {
                                [iCloudSaveArray addObject:[result objectAtIndex:i]];
                            }
                        }
                        [iCloudSaveArray addObject:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text]];
                        [cloudStore setArray: iCloudSaveArray forKey:@"us_imp_substitutions"];
                    } else {
                        result = [cloudStore arrayForKey:@"metric_substitutions"];
                        if (result != nil) {
                            for (int i = 0; i < result.count; i++) {
                                [iCloudSaveArray addObject:[result objectAtIndex:i]];
                            }
                        }
                        [iCloudSaveArray addObject:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text]];
                        [cloudStore setArray: iCloudSaveArray forKey:@"metric_substitutions"];
                    }
                    [cloudStore synchronize];
                }
            } else {
                // save entry to iCloud by default
                NSMutableArray *iCloudSaveArray = [[NSMutableArray alloc] init];
                NSArray *result;
                if (subSeg.selectedSegmentIndex == 0) {
                    result = [cloudStore arrayForKey:@"us_imp_substitutions"];
                    if (result != nil) {
                        for (int i = 0; i < result.count; i++) {
                            [iCloudSaveArray addObject:[result objectAtIndex:i]];
                        }
                    }
                    [iCloudSaveArray addObject:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text]];
                    [cloudStore setArray: iCloudSaveArray forKey:@"us_imp_substitutions"];
                } else {
                    result = [cloudStore arrayForKey:@"metric_substitutions"];
                    if (result != nil) {
                        for (int i = 0; i < result.count; i++) {
                            [iCloudSaveArray addObject:[result objectAtIndex:i]];
                        }
                    }
                    [iCloudSaveArray addObject:[NSString stringWithFormat:@"%@", [alertView textFieldAtIndex:0].text]];
                    [cloudStore setArray: iCloudSaveArray forKey:@"metric_substitutions"];
                }
                [cloudStore synchronize];
            }
        }
    
    } else {
        if (buttonIndex == 0) {
            // cancel button clicked
        } else if (buttonIndex == 1) {
            // delete button clicked
            UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Delete All Substitutions"
                                                                  message:@"Are you sure? This cannot be undone.\n Swipe left/ Tap item to delete single item from saves"
                                                                 delegate:self
                                                        cancelButtonTitle:@"No"
                                                        otherButtonTitles:@"Yes", nil];
            [deleteAlert setTag:3];
            [deleteAlert show];
            
        }
    }
}


# pragma table view for substitutions data
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return saves.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    [cell.textLabel setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1]; /*#d12028*/
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
    } else {
        cell.textLabel.text = [saves objectAtIndex:indexPath.row];
    }
    
    return cell;
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
        if (subSeg.selectedSegmentIndex == 0) {
            NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
            NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Us_Imp"];
            self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
            UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
            NSString *cellText = selectedCell.textLabel.text;
            for (int i = 0; i < saves.count; i++) {
                if ([cellText isEqualToString:[saves objectAtIndex:i]]) {
                    NSManagedObject *managedObject = [self.info objectAtIndex:i];
                    [self.managedObjectContext deleteObject:managedObject];
                    [self.managedObjectContext save:nil];
                    [saves removeObjectAtIndex:i];
                }
            }
        } else {
            NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
            NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Metric"];
            self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
            UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
            NSString *cellText = selectedCell.textLabel.text;
            for (int i = 0; i < saves.count; i++) {
                if ([cellText isEqualToString:[saves objectAtIndex:i]]) {
                    NSManagedObject *managedObject = [self.info objectAtIndex:i];
                    [self.managedObjectContext deleteObject:managedObject];
                    [self.managedObjectContext save:nil];
                    [saves removeObjectAtIndex:i];
                }
            }
        }
        
        NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
        
        // check to see if iCloud is enabled
        if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
            iCloudEnabled = [NSString stringWithFormat:@"%@", [defaults objectForKey:@"iCloudEnabled"]];
            if ([iCloudEnabled isEqualToString:@"YES"]) {
                // delete entry to iCloud
                NSArray *result;
                UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
                NSString *cellText = selectedCell.textLabel.text;
                if (subSeg.selectedSegmentIndex == 0) {
                    result = [cloudStore arrayForKey:@"us_imp_substitutions"];
                    if (result != nil) {
                        NSMutableArray *iCloudData = [[NSMutableArray alloc] init];
                        [iCloudData addObjectsFromArray:result];
                        for (int i = 0; i < iCloudData.count; i++) {
                            if ([[iCloudData objectAtIndex:i] isEqualToString:cellText]) {
                                [iCloudData removeObjectAtIndex:i];
                                [cloudStore setArray: iCloudData forKey:@"us_imp_substitutions"];
                            }
                        }
                    }
                } else {
                    result = [cloudStore arrayForKey:@"metric_substitutions"];
                    if (result != nil) {
                        if (result != nil) {
                            NSMutableArray *iCloudData = [[NSMutableArray alloc] init];
                            [iCloudData addObjectsFromArray:result];
                            for (int i = 0; i < iCloudData.count; i++) {
                                if ([[iCloudData objectAtIndex:i] isEqualToString:cellText]) {
                                    [iCloudData removeObjectAtIndex:i];
                                    [cloudStore setArray: iCloudData forKey:@"metric_substitutions"];
                                }
                            }
                        }
                    }
                }
                [cloudStore synchronize];
            }
        } else {
            // delete entry to iCloud
            NSArray *result;
            UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
            NSString *cellText = selectedCell.textLabel.text;
            if (subSeg.selectedSegmentIndex == 0) {
                result = [cloudStore arrayForKey:@"us_imp_substitutions"];
                if (result != nil) {
                    NSMutableArray *iCloudData = [[NSMutableArray alloc] init];
                    [iCloudData addObjectsFromArray:result];
                    for (int i = 0; i < iCloudData.count; i++) {
                        if ([[iCloudData objectAtIndex:i] isEqualToString:cellText]) {
                            [iCloudData removeObjectAtIndex:i];
                            [cloudStore setArray: iCloudData forKey:@"us_imp_substitutions"];
                        }
                    }
                }
            } else {
                result = [cloudStore arrayForKey:@"metric_substitutions"];
                if (result != nil) {
                    if (result != nil) {
                        NSMutableArray *iCloudData = [[NSMutableArray alloc] init];
                        [iCloudData addObjectsFromArray:result];
                        for (int i = 0; i < iCloudData.count; i++) {
                            if ([[iCloudData objectAtIndex:i] isEqualToString:cellText]) {
                                [iCloudData removeObjectAtIndex:i];
                                [cloudStore setArray: iCloudData forKey:@"metric_substitutions"];
                            }
                        }
                    }
                }
            }
            [cloudStore synchronize];
        }
        if (searchResults.count > 0) {
            [searchResults removeObjectAtIndex:indexPath.row];
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        } else {
            [_myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        }
    }
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [_myTableView reloadData];
    [searchResults removeAllObjects];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [doneBtn setHidden:false];
    [doneBtn2 setHidden:false];
    [addBtn setHidden:true];
    [addBtn2 setHidden:true];
    [tableView setEditing:YES animated:YES];
}

// ran when check button is clicked to stop table view editing
- (IBAction)onDoneClick:(id)sender {
    [doneBtn setHidden:true];
    [doneBtn2 setHidden:true];
    [addBtn setHidden:false];
    [addBtn2 setHidden:false];
    [_myTableView setEditing:NO animated:YES];
}


- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"SELF contains[cd] %@",
                                    searchText];
    
    [searchResults removeAllObjects];
    [searchResults addObjectsFromArray:[saves filteredArrayUsingPredicate:resultPredicate]];
}

- (void)searchDisplayController:(UISearchDisplayController *)controller
 willShowSearchResultsTableView:(UITableView *)tableView
{
//    [tableView setFrame:CGRectMake(_myTableView.frame.origin.x, _myTableView.frame.origin.y, _myTableView.frame.size.width, _myTableView.frame.size.height)];
    [tableView setBackgroundColor:[UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1] /*#d12028*/];
    [tableView setRowHeight:60.0f];
    tableView.contentInset = UIEdgeInsetsMake(0, 0, 50, 0);
}

#pragma mark - UISearchDisplayController delegate methods
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}


@end
