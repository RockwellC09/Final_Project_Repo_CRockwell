//
//  ThirdViewController.h
//  CMC
//
//  Created by Christopher Rockwell on 11/20/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate, UIAlertViewDelegate>
{
    IBOutlet UITableView *myTableView;
    IBOutlet UIButton *doneBtn;
}

- (IBAction)onClick:(id)sender;
- (IBAction)onDoneClick:(id)sender;
@end
