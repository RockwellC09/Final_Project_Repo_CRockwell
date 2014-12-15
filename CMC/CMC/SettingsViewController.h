//
//  SettingsViewController.h
//  CMC
//
//  Created by Christopher Rockwell on 12/12/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController <UIAlertViewDelegate>
{
    IBOutlet UISwitch *iCloudSwitch;
}

- (IBAction)iCloudClick:(id)sender;
- (IBAction)onBackClick:(id)sender;
- (IBAction)onSwitch:(id)sender;

@end
