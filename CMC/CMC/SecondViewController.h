//
//  SecondViewController.h
//  CMC
//
//  Created by Christopher Rockwell on 11/17/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>
{
    IBOutlet UISegmentedControl *subSeg;
    IBOutlet UIButton *addBtn;
    IBOutlet UIButton *addBtn2;
    IBOutlet UIButton *doneBtn;
    IBOutlet UIButton *doneBtn2;
}
- (IBAction)onChange:(id)sender;
- (IBAction)onAddClick:(id)sender;
- (IBAction)onDeleteClick:(id)sender;
- (void)loadData;
- (IBAction)onDoneClick:(id)sender;
@property (nonatomic, strong) IBOutlet UITableView *myTableView;
@end

