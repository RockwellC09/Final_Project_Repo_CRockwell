//
//  Calculations.m
//  CMC
//
//  Created by Christopher Rockwell on 11/30/14.
//  Copyright (c) 2014 Christopher Rockwell. All rights reserved.
//

#import "Calculations.h"

@implementation Calculations


+ (NSString*)calc : (NSString *)from : (NSString *)to : (int)num{
    if ([from isEqualToString:@"US Teaspoons"]) {
        if ([to isEqualToString:@"US Teaspoons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 0.333333;
            NSLog(@"%f", results);
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:2];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
    return @"nil";
}


@end
