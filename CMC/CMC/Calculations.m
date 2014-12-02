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
    
#pragma US Teaspoons Selection
    
    if ([from isEqualToString:@"US Teaspoons"]) {
        if ([to isEqualToString:@"US Teaspoons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 0.333333;

            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.0208333;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.166667;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.00130208;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.00520833;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.0104167;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.00492892;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.00492892;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 0.832674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 0.277558;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.1734732726711;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.00108421;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.00433684;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.00867369;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma US Tablespoons Selection
    
    if ([from isEqualToString:@"US Tablespoons"]) {
        if ([to isEqualToString:@"US Tablespoons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 3;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.0625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.00390625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.015625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.03125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.0147868;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 15;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.0147868;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 15;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 2.49802;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 0.832674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.520421;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.00325263;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.0130105;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.0260211;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Cups Selection
    
    if ([from isEqualToString:@"Cups"]) {
        if ([to isEqualToString:@"Cups"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 48;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 16;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 8;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.0625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.25;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.2365;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 236.588;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.236588;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 236.588;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 39.9683;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 13.3228;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 8.32674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.0520421;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.208168;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.416337;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma US Ounces Selection
    
    if ([from isEqualToString:@"US Ounces"]) {
        if ([to isEqualToString:@"US Ounces"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 6;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 2;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.0078125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.03125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.0625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.0295735;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 29.5735;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.0295735;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 29.5735;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 4.99604;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 1.66535;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 1.04084;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.0520421;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.00650526;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.0520421;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma US Gallons Selection
    
    if ([from isEqualToString:@"US Gallons"]) {
        if ([to isEqualToString:@"US Gallons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 768;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 256;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 16;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 128;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 4;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 8;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 3.78541;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 3785.41;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 3.78541;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 3785.41;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 639.494;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 213.165;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 133.228;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.832674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 3.3307;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 6.66139;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma US Quarts Selection
    
    if ([from isEqualToString:@"US Quarts"]) {
        if ([to isEqualToString:@"US Quarts"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 192;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 64;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 4;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 32;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.25;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 2;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.946353;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 946.353;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.946353;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 946.353;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 159.873;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 53.2911;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 33.307;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.208168;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.832674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 1.66535;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma US Pints Selection
    
    if ([from isEqualToString:@"US Pints"]) {
        if ([to isEqualToString:@"US Pints"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 96;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 32;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 2;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 16;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.473176;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 473.176;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.473176;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 0.473176;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 79.9367;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 26.6456;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 16.6535;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.104084;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.416337;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.832674;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }

#pragma Kilograms Selection
    
    if ([from isEqualToString:@"Kilograms"]) {
        if ([to isEqualToString:@"Kilograms"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 202.88413535328;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 67.62804511776;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 4.22675281986;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 33.81402255888;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.26417205124125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 1.056688204965;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 2.11337640993;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 1000;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 1;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 1000;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 168.9363121543187;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 56.31210405143955;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 35.19506503214972;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.2199691564509358;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.879876625803743;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 1.759753251607486;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }

#pragma Grams Selection
    
    if ([from isEqualToString:@"Grams"]) {
        if ([to isEqualToString:@"Grams"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 0.20304;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 0.06768;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.00423;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.03384;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.000264375;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:4];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.0010575;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.002115;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.001;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.001;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 1;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 0.1690660966;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 0.05635536552;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.03522210345;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.0002201381466;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:4];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.0008805525863;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.001761105173;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Liters Selection
    
    if ([from isEqualToString:@"Liters"]) {
        if ([to isEqualToString:@"Liters"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 202.88413535328;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 67.62804511776;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 4.22675281986;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 33.81402255888;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.26417205124125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 1.056688204965;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 2.11337640993;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 1;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 1000;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 1000;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 168.9363121543187;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 56.31210405143955;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 35.19506503214972;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.2199691564509358;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.879876625803743;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 1.759753251607486;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Milliliters Selection
    
    if ([from isEqualToString:@"Milliliters"]) {
        if ([to isEqualToString:@"Milliliters"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 0.20304;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 0.06768;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.00423;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.03384;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.000264375;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:4];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.0010575;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.002115;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.001;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 1;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.001;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 0.1690660966;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 0.05635536552;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.03522210345;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.0002201381466;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:4];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.0008805525863;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.001761105173;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Teaspoons Selection
    
    if ([from isEqualToString:@"Imp Teaspoons"]) {
        if ([to isEqualToString:@"Imp Teaspoons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 1.20095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 0.400317;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.0250198;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.200158;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.00156374;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.00625495;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.0125099;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.00591939;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 4.73;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.00591939;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 4.73;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 0.333333;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.208333;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.00130208;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.00520833;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.0104167;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Tablespoons Selection
    
    if ([from isEqualToString:@"Imp Tablespoons"]) {
        if ([to isEqualToString:@"Imp Tablespoons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 3.60285;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 1.20095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.0750594;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.600475;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.00469121;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.0187649;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.0375297;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.0177582;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 17.7582;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.0177582;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 17.7582;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 3;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 0.625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.00390625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.015625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.03125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Ounces Selection
    
    if ([from isEqualToString:@"Imp Ounces"]) {
        if ([to isEqualToString:@"Imp Ounces"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 5.76456;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 1.92152;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 0.120095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 0.96076;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.00750594;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.0300238;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 0.0600475;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.0284;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 28.4;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.0284;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 28.4;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 4.8;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 1.6;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.00625;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.025;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 0.05;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Gallons Selection
    
    if ([from isEqualToString:@"Imp Gallons"]) {
        if ([to isEqualToString:@"Imp Gallons"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 922.33;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 307.443;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 19.2152;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 153.722;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 1.20095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 4.8038;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 9.6076;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 4.54609;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 4546.09;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 4.54609;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 4546.09;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 768;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 256;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 160;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 4;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 8;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Quarts Selection
    
    if ([from isEqualToString:@"Imp Quarts"]) {
        if ([to isEqualToString:@"Imp Quarts"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 230.582;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 76.8608;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 4.8038;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 38.4304;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.300238;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 1.20095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 2.4019;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 1.13652;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 1136.52;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 1.13652;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 1136.52;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 192;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 64;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 40;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.25;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Pints"]) {
            float results = num * 2;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
#pragma Imp Pints Selection
    
    if ([from isEqualToString:@"Imp Pints"]) {
        if ([to isEqualToString:@"Imp Pints"]) {
            int results = num * 1;
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithInt:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Teaspoons"]) {
            float results = num * 115.291;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Tablespoons"]) {
            float results = num * 38.4304;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Cups"]) {
            float results = num * 2.4019;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Ounces"]) {
            float results = num * 19.2152;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Gallons"]) {
            float results = num * 0.150119;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Quarts"]) {
            float results = num * 0.600475;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"US Pints"]) {
            float results = num * 1.20095;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Kilograms"]) {
            float results = num * 0.568261;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Grams"]) {
            float results = num * 568.261;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Liters"]) {
            float results = num * 0.568261;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Milliliters"]) {
            float results = num * 568.261;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Teaspoons"]) {
            float results = num * 96;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Tablespoons"]) {
            float results = num * 32;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Ounces"]) {
            float results = num * 20;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Gallons"]) {
            float results = num * 0.125;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        } if ([to isEqualToString:@"Imp Quarts"]) {
            float results = num * 0.5;
            
            NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
            [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
            numFormatter.locale = [NSLocale currentLocale];
            [numFormatter setMaximumFractionDigits:3];
            NSString *formattedOutput = [numFormatter stringFromNumber:[NSNumber numberWithFloat:results ]];
            return formattedOutput;
        }
    }
    
    return @"nil";
}


@end
