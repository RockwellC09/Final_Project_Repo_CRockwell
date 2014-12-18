//
//  FirstViewController.m
//  CMC
//
//  Created by Christopher Rockwell on 11/17/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "FirstViewController.h"
#import "CategorySliderView.h"
#import <CoreData/CoreData.h>

@interface FirstViewController ()
@property (nonatomic, strong) CategorySliderView *sliderView;
@property (nonatomic, strong) CategorySliderView *sliderView2;
@property (strong) NSMutableArray *info;

@end

UILabel *oldView;
UILabel *oldView2;
bool first;
bool first2;
NSInteger stepVal;
NSString *fromStr;
NSString *toStr;
NSUbiquitousKeyValueStore *cloudStore;
NSMutableArray *savedObjs;
NSString *iCloudEnabled;
NSMutableArray *saves;
NSArray *subs;

@implementation FirstViewController
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // show status bar
    [[UIApplication sharedApplication] setStatusBarHidden:false];
    
    // set tabbat color
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1] /*#d12028*/];
    
    // set defaults
    first = true;
    first2 = true;
    resultsLabel.clipsToBounds = YES;
    resultsNameLabel.clipsToBounds = YES;
    [resultsLabel.layer setCornerRadius:4];
    [resultsNameLabel.layer setCornerRadius:4];
    valField.delegate = self;
    [valField addTarget:self
                  action:@selector(textFieldDidChange:)
        forControlEvents:UIControlEventEditingChanged];
    [self.circularSlider addTarget:self action:@selector(updateProgress:) forControlEvents:UIControlEventValueChanged];
    self.circularSlider.minimumValue = 1;
    self.circularSlider.maximumValue = 600;
    self.circularSlider.continuous = YES;
    [self.circularSlider setMinimumTrackTintColor:[UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1] /*#d12028*/];
    stepVal = myTempStepper.value;
    saveBtn.layer.cornerRadius = 4;
    saveBtn.layer.borderWidth = 1;
    saveBtn.layer.borderColor = [UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1] /*#d12028*/.CGColor;
    fromStr = @"US Teaspoons";
    toStr = @"US Teaspoons";
    
    // see if app has been launched to see if the tutorial should show
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"LaunchedBefore"])
    {
        // app already launched
        
    }
    else
    {
        [helpImgView setHidden:false];
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"LaunchedBefore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        saves = [[NSMutableArray alloc] init];
        subs = [[NSArray alloc] init];
        [self loadTextFiles];
    }
    
    // get screen size
    CGRect myScreenRect = [[UIScreen mainScreen] bounds];
    //CGFloat screenWidth = myScreenRect.size.width;
    CGFloat myScreenHeight = myScreenRect.size.height;
    
    // add done button for keyboard
    UIToolbar* keyboardDoneBtn = [[UIToolbar alloc] init];
    [keyboardDoneBtn sizeToFit];
    UIBarButtonItem *flexibleSpace =  [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];

    UIBarButtonItem* doneBtn = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                                   style:UIBarButtonItemStyleBordered target:self
                                                                  action:@selector(doneBtnClicked:)];
    // add fraction buttons to keyboard
    
    UIBarButtonItem* frac1 = [[UIBarButtonItem alloc] initWithTitle:@"1/8"
                                                                style:UIBarButtonItemStyleBordered target:self
                                                               action:@selector(frac1BtnClicked:)];
    UIBarButtonItem* frac2 = [[UIBarButtonItem alloc] initWithTitle:@"1/4"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(frac2BtnClicked:)];
    UIBarButtonItem* frac3 = [[UIBarButtonItem alloc] initWithTitle:@"1/2"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(frac3BtnClicked:)];
    UIBarButtonItem* noFrac = [[UIBarButtonItem alloc] initWithTitle:@"--"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(noFracBtnClicked:)];
    UIBarButtonItem* frac4 = [[UIBarButtonItem alloc] initWithTitle:@"3/4"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(frac4BtnClicked:)];
    UIBarButtonItem* frac5 = [[UIBarButtonItem alloc] initWithTitle:@"1/3"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(frac5BtnClicked:)];
    UIBarButtonItem* frac6 = [[UIBarButtonItem alloc] initWithTitle:@"2/3"
                                                              style:UIBarButtonItemStyleBordered target:self
                                                             action:@selector(frac6BtnClicked:)];
    
    // set tab bar items color and font
    [doneBtn setTitleTextAttributes:@{
                                         NSFontAttributeName: [UIFont fontWithName:@"Raleway-Bold" size:16.0],
                                         NSForegroundColorAttributeName: [UIColor colorWithRed:0.82 green:0.125 blue:0.157 alpha:1] /*#d12028*/
                                         } forState:UIControlStateNormal];
    [frac1 setTitleTextAttributes:@{
                                      NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                      NSForegroundColorAttributeName: [UIColor grayColor]
                                      } forState:UIControlStateNormal];
    [frac2 setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    [frac3 setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    [noFrac setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    [frac4 setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    [frac5 setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    [frac6 setTitleTextAttributes:@{
                                    NSFontAttributeName: [UIFont fontWithName:@"Raleway-Medium" size:16.0],
                                    NSForegroundColorAttributeName: [UIColor grayColor]
                                    } forState:UIControlStateNormal];
    
    [keyboardDoneBtn setItems:[NSArray arrayWithObjects:flexibleSpace, frac1, flexibleSpace, frac2, flexibleSpace, frac3, flexibleSpace, noFrac, flexibleSpace, frac4, flexibleSpace, frac5, flexibleSpace, frac6, flexibleSpace, doneBtn, flexibleSpace, nil]];
    valField.inputAccessoryView = keyboardDoneBtn;
    
    // setup bottom slider
    self.sliderView2 = [[CategorySliderView alloc] initWithSliderHeight:60 andCategoryViews:@[[self labelWithText2:@"US Teaspoons"], [self labelWithText2:@"US Tablespoons"], [self labelWithText2:@"Cups"], [self labelWithText2:@"US Ounces"], [self labelWithText2:@"US Gallons"], [self labelWithText2:@"US Quarts"], [self labelWithText2:@"US Pints"], [self labelWithText2:@"Kilograms"], [self labelWithText2:@"Grams"], [self labelWithText2:@"Liters"], [self labelWithText2:@"Milliliters"], [self labelWithText2:@"Imp Teaspoons"], [self labelWithText2:@"Imp Tablespoons"], [self labelWithText2:@"Imp Ounces"], [self labelWithText2:@"Imp Gallons"] ,[self labelWithText2:@"Imp Quarts"], [self labelWithText2:@"Imp Pints"]] categorySelectionBlock:^(UIView *categoryView, NSInteger categoryIndex) {
        [oldView2 setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
        UILabel *selectedView = (UILabel *)categoryView;
        // bold the selected item
        [selectedView setFont:[UIFont fontWithName:@"Raleway-Bold" size:17.0]];
        oldView2 = (UILabel *)categoryView;
        [resultsLabel setText:[NSString stringWithFormat:@"1"]];
        [resultsNameLabel setText:[NSString stringWithFormat:@"%@", selectedView.text]];
        toStr = [NSString stringWithFormat:@"%@", selectedView.text];
        NSString *valStrWithoutCommas = [valField.text
                                         stringByReplacingOccurrencesOfString:@"," withString:@""];
        resultsLabel.text = [Calculations calc:fromStr :toStr :[valStrWithoutCommas floatValue]];
    }];
    
    // Fetch the info from persistent data store
    savedObjs = [[NSMutableArray alloc] init];
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Info"];
    self.info = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    for (int i = 0; i < [self.info count]; i++) {
        NSManagedObject *infoObj = [self.info objectAtIndex:i];
        [savedObjs addObject:[infoObj valueForKey:@"conversions"]];
    }
    
    // setup top slider
    self.sliderView = [[CategorySliderView alloc] initWithSliderHeight:60 andCategoryViews:@[[self labelWithText:@"US Teaspoons"], [self labelWithText:@"US Tablespoons"], [self labelWithText:@"Cups"], [self labelWithText:@"US Ounces"], [self labelWithText:@"US Gallons"], [self labelWithText:@"US Quarts"], [self labelWithText:@"US Pints"], [self labelWithText:@"Kilograms"], [self labelWithText:@"Grams"], [self labelWithText:@"Liters"], [self labelWithText:@"Milliliters"], [self labelWithText:@"Imp Teaspoons"], [self labelWithText:@"Imp Tablespoons"], [self labelWithText:@"Imp Ounces"], [self labelWithText:@"Imp Gallons"] ,[self labelWithText:@"Imp Quarts"], [self labelWithText:@"Imp Pints"]] categorySelectionBlock:^(UIView *categoryView, NSInteger categoryIndex) {
        [oldView setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
        UILabel *selectedView = (UILabel *)categoryView;
        // bold the selected item
        [selectedView setFont:[UIFont fontWithName:@"Raleway-Bold" size:17.0]];
        [startLabel setText:[NSString stringWithFormat:@"%@", selectedView.text]];
        oldView = (UILabel *)categoryView;
        fromStr = [NSString stringWithFormat:@"%@", selectedView.text];
        NSString *valStrWithoutCommas = [valField.text
                                      stringByReplacingOccurrencesOfString:@"," withString:@""];
        resultsLabel.text = [Calculations calc:fromStr :toStr :[valStrWithoutCommas floatValue]];
    }];
    [self.sliderView setY:-60];
    [self.sliderView moveY:64 duration:0.5 complation:nil];
    [self.view addSubview:self.sliderView];
    [self.view sendSubviewToBack:self.sliderView];
    
    [self.sliderView2 setY:-60];
    [self.sliderView2 moveY:myScreenHeight - 110 duration:0.5 complation:nil];
    [self.view addSubview:self.sliderView2];
    [self.view sendSubviewToBack:self.sliderView2];
    
    // setup iCloud
    cloudStore = [NSUbiquitousKeyValueStore defaultStore];
    //NSArray *result = [cloudStore arrayForKey:@"conversions"];
    //NSLog(@"Answer: %@", result);
    
}

// load substitution data from text files
- (void)loadTextFiles {
    // read US and Imperial substitutions data from txt file
    NSString* path = [[NSBundle mainBundle] pathForResource:@"us_imp_substitutions"
                                                     ofType:@"txt"];
    subs = [[NSString stringWithContentsOfFile:path
                                      encoding:NSUTF8StringEncoding
                                         error:nil]
            componentsSeparatedByString:@"\n"];
    // store data to core data
    [saves removeAllObjects];
    [saves addObjectsFromArray:subs];
    // save data from text file to Core Data
    for (int i = 0; i < saves.count; i++) {
        NSManagedObjectContext *context = [self managedObjectContext];
        NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Us_Imp" inManagedObjectContext:context];
        [newInfo setValue:[saves objectAtIndex:i] forKey:@"us_imp_substitutions"];
        NSError *error = nil;
        // Save the object to persistent store
        if (![context save:&error]) {
            NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
        }
    }
    
    // read Metric substitutions data from txt file
    NSString* path2 = [[NSBundle mainBundle] pathForResource:@"metric_substitutions"
                                                     ofType:@"txt"];
    subs = [[NSString stringWithContentsOfFile:path2
                                      encoding:NSUTF8StringEncoding
                                         error:nil]
            componentsSeparatedByString:@"\n"];
    // store data to core data
    [saves removeAllObjects];
    [saves addObjectsFromArray:subs];
    // save data from text file to Core Data
    for (int i = 0; i < saves.count; i++) {
        NSManagedObjectContext *context = [self managedObjectContext];
        NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Metric" inManagedObjectContext:context];
        [newInfo setValue:[saves objectAtIndex:i] forKey:@"metric_substitutions"];
        NSError *error = nil;
        // Save the object to persistent store
        if (![context save:&error]) {
            NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
        }
    }
}

// ran when tempurature slider value is changed
- (IBAction)updateProgress:(UISlider *)sender {
    farLabel.text = [NSString stringWithFormat:@"%.0f° F", self.circularSlider.value];
    celLabel.text = [NSString stringWithFormat:@"%.0f° C", floor((self.circularSlider.value - 32)) * 5 / 9 ];
}

// ran when keyboard done button clicked
- (void)doneBtnClicked:(id)sender {
    NSString *strWithoutCommas = [valField.text
                                  stringByReplacingOccurrencesOfString:@"," withString:@""];
    myStepper.value = [strWithoutCommas intValue];
    if ([valField.text isEqualToString:@"0"]) {
        valField.text = @"1";
    }
    [self.view endEditing:YES];
}

// ran when measurements stepper is clicked
- (IBAction)stepperPress:(id)sender{
    NSString *textFieldText = [[NSString stringWithFormat:@"%f", myStepper.value] stringByReplacingOccurrencesOfString:@"," withString:@""];
    
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:[textFieldText intValue]]];
    valField.text = formattedOutput;
    resultsLabel.text = [Calculations calc:fromStr :toStr :[textFieldText floatValue]];
}

// ran when temperature stepper is clicked
- (IBAction)stepperPress2:(id)sender{
    // check to see if stepper should add, subtract, or reset
    if (stepVal >= myTempStepper.value) {
        if (self.circularSlider.value == 1) {
            [self.circularSlider setValue:600];
            [myTempStepper setValue:0];
            stepVal = 0;
        } else {
            [self.circularSlider setValue:self.circularSlider.value - 1];
            stepVal--;
        }
    } else {
        if (self.circularSlider.value < 600) {
            [self.circularSlider setValue:self.circularSlider.value + 1];
            stepVal++;
        } else {
            [self.circularSlider setValue:1];
            [myTempStepper setValue:0];
            stepVal = 0;
        }
    }
    
}

// highlight all the text when the editText box is clicked
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [textField selectAll:self];
}

- (void)textFieldDidChange:(UITextField *)textField
{
    // format the text
    NSString *textFieldText = [textField.text stringByReplacingOccurrencesOfString:@"," withString:@""];
    myStepper.value = [textFieldText intValue];
    
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:[textFieldText intValue]]];
    valField.text = formattedOutput;
    resultsLabel.text = [Calculations calc:fromStr :toStr :[textFieldText floatValue]];
}

// format test for top slider
- (UILabel *)labelWithText:(NSString *)text {
    
    UILabel *myLabel = [[UILabel alloc] init];
    [myLabel setTextColor:[UIColor whiteColor]];
    [myLabel setTextAlignment:NSTextAlignmentCenter];
    if (first) {
        [myLabel setFont:[UIFont fontWithName:@"Raleway-Bold" size:17.0]];
        oldView = (UILabel *)myLabel;
        first = false;
    } else {
        [myLabel setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
    }
    [myLabel setText:text];
    CGSize size = [myLabel.text sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"Raleway-Bold" size:19.0]}];
    myLabel.frame = CGRectMake(0, 0, size.width, 60);
    return myLabel;
}

// format test for bottom slider
- (UILabel *)labelWithText2:(NSString *)text {
    
    UILabel *myLabel2 = [[UILabel alloc] init];
    [myLabel2 setTextColor:[UIColor whiteColor]];
    [myLabel2 setTextAlignment:NSTextAlignmentCenter];
    if (first2) {
        [myLabel2 setFont:[UIFont fontWithName:@"Raleway-Bold" size:17.0]];
        oldView2 = (UILabel *)myLabel2;
        first2 = false;
    } else {
        [myLabel2 setFont:[UIFont fontWithName:@"Raleway-Medium" size:16.0]];
    }
    [myLabel2 setText:text];
    CGSize size = [myLabel2.text sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"Raleway-Bold" size:19.0]}];
    myLabel2.frame = CGRectMake(0, 0, size.width, 60);
    return myLabel2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// runs when info button is clicked to show/hide the tutorial image
- (IBAction)onClick:(id)sender {
    if ([helpImgView isHidden]) {
        [helpImgView setHidden:false];
        [tutBtn setHidden:false];
    } else {
        [helpImgView setHidden:true];
        [tutBtn setHidden:true];
    }
}

// ran when tutorial Got It button is clicked to hide the tutorial
- (IBAction)onTutClick:(id)sender {
    [helpImgView setHidden:true];
    [tutBtn setHidden:true];
}

// ran when setting button clicked
- (IBAction)onSettingsClick:(id)sender {
    // check the screen size and load the proper storyboard
    if ([[UIScreen mainScreen] bounds].size.height == 480) {
        //iPhone 4
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main3.5" bundle:nil];
        
        FirstViewController *iPhone4View = [storyBoard instantiateViewControllerWithIdentifier:@"Settings"];
        [self presentViewController:iPhone4View animated:true completion:nil];
    } else if ([[UIScreen mainScreen] bounds].size.height == 568) {
        //iPhone 5
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main4" bundle:nil];
        
        FirstViewController *iPhone5View = [storyBoard instantiateViewControllerWithIdentifier:@"Settings"];
        [self presentViewController:iPhone5View animated:true completion:nil];
    } else if ([[UIScreen mainScreen] bounds].size.height == 667) {
        //iPhone 6
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main6" bundle:nil];
        
        FirstViewController *iPhone6View = [storyBoard instantiateViewControllerWithIdentifier:@"Settings"];
        [self presentViewController:iPhone6View animated:true completion:nil];
    } else {
        //iPhone 6 Plus
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main6p" bundle:nil];
        
        FirstViewController *iPhone6pView = [storyBoard instantiateViewControllerWithIdentifier:@"Settings"];
        [self presentViewController:iPhone6pView animated:true completion:nil];
    }
}

// ran when save button clicked
- (IBAction)onSaveClick:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *newInfo = [NSEntityDescription insertNewObjectForEntityForName:@"Info" inManagedObjectContext:context];
    [newInfo setValue:[NSString stringWithFormat:@"%@ %@ = %@ %@",valField.text, startLabel.text, resultsLabel.text, resultsNameLabel.text] forKey:@"conversions"];
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    
    // check to see if iCloud is enabled
    if ([defaults objectForKey:@"iCloudEnabled"] != nil) {
        iCloudEnabled = [NSString stringWithFormat:@"%@", [defaults objectForKey:@"iCloudEnabled"]];
        if ([iCloudEnabled isEqualToString:@"YES"]) {
            // save data to iCloud
            [savedObjs addObject:[NSString stringWithFormat:@"%@ %@ = %@ %@",valField.text, startLabel.text, resultsLabel.text, resultsNameLabel.text]];
            [cloudStore setArray: savedObjs forKey:@"conversions"];
            [cloudStore synchronize];
        }
    } else {
        // save data to iCloud by default
        [savedObjs addObject:[NSString stringWithFormat:@"%@ %@ = %@ %@",valField.text, startLabel.text, resultsLabel.text, resultsNameLabel.text]];
        [cloudStore setArray: savedObjs forKey:@"conversions"];
        [cloudStore synchronize];
    }
    UIAlertView *saveAlert = [[UIAlertView alloc] initWithTitle:@"Data Saved"
                                                          message:@"View saves in the saves tab"
                                                         delegate:self
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles: nil];
    [saveAlert show];
}

# pragma fraction button methods

- (void) frac1BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .125;
    valField.text = [NSString stringWithFormat:@"%.03f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}

- (void) frac2BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .25;
    valField.text = [NSString stringWithFormat:@"%.02f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}
- (void) frac3BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .50;
    valField.text = [NSString stringWithFormat:@"%.02f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}

- (void) noFracBtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    valField.text = [NSString stringWithFormat:@"%i", wholeNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}

- (void) frac4BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .75;
    valField.text = [NSString stringWithFormat:@"%.02f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}
- (void) frac5BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .33;
    valField.text = [NSString stringWithFormat:@"%.02f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}

- (void) frac6BtnClicked:(id)sender {
    int wholeNum = floor([valField.text doubleValue]);
    float decNum = wholeNum + .66;
    valField.text = [NSString stringWithFormat:@"%.02f", decNum];
    resultsLabel.text = [Calculations calc:fromStr :toStr :[valField.text floatValue]];
}

@end
