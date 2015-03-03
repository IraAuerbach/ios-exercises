//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSString *output = @"";
    
    //Boolean tests to organize direction of loop
    BOOL isEqual = (number - otherNumber == 0) ? YES : NO;
    BOOL numberIsHigher = (number - otherNumber > 0) ? YES : NO;
    BOOL otherNumberIsHigher = (number - otherNumber < 0) ? YES : NO;
    
    //conditional statements based on organization booleans above
    if (isEqual) {
        output = [NSString stringWithFormat:@"%ld", number];
    }
    else if(numberIsHigher){
        for(NSInteger counter = 0; counter <= (number-otherNumber); counter++){
            output = [NSString stringWithFormat:@"%@%ld", output, otherNumber+counter];
        }
    }
    else if(otherNumberIsHigher){
        for (NSInteger counter = 0; counter <= (otherNumber-number); counter++) {
            output = [NSString stringWithFormat:@"%@%ld", output, number+counter];
        }
    }
    
    return output;
}

@end
