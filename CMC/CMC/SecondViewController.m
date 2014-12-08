//
//  SecondViewController.m
//  CMC
//
//  Created by Christopher Rockwell on 11/17/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
NSArray *subs;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // read US and Imperial substitutions data from txt file
    NSString* path = [[NSBundle mainBundle] pathForResource:@"us_imp_substitutions"
                                                     ofType:@"txt"];
   subs = [[NSString stringWithContentsOfFile:path
                                               encoding:NSUTF8StringEncoding
                                                  error:nil]
           componentsSeparatedByString:@"\n"];
    
    //metric_substitutions
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChange:(id)sender {
    UISegmentedControl * subSegControl = (UISegmentedControl *)sender;
    if (subSegControl.selectedSegmentIndex == 0) {
        // read US and Imperial substitutions data from txt file
        NSString* path = [[NSBundle mainBundle] pathForResource:@"us_imp_substitutions"
                                                         ofType:@"txt"];
        subs = [[NSString stringWithContentsOfFile:path
                                          encoding:NSUTF8StringEncoding
                                             error:nil]
                componentsSeparatedByString:@"\n"];
        [myTableView reloadData];
    } else {
        // read Metric substitutions data from txt file
        NSString* path = [[NSBundle mainBundle] pathForResource:@"metric_substitutions"
                                                         ofType:@"txt"];
        subs = [[NSString stringWithContentsOfFile:path
                                          encoding:NSUTF8StringEncoding
                                             error:nil]
                componentsSeparatedByString:@"\n"];
        [myTableView reloadData];
    }
}


# pragma table view for substitutions data
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return subs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    [cell.textLabel setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
    cell.textLabel.numberOfLines = 2;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.text = [subs objectAtIndex:indexPath.row];
    
    return cell;
}



@end
