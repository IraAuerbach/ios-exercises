//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    //Unbox input as Double, multiply by 2, rebox as NSNumber, return
    NSNumber *doubleValue = [NSNumber numberWithDouble:(2 * [number doubleValue])];
    return doubleValue;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *output = [[NSMutableArray alloc] init];
    
    //unbox NSIntegers to ints
    int numberAsInt = (int) number;
    int otherNumberAsInt = (int) otherNumber;
    
    
    //Boolean tests to organize direction of loop
    BOOL isEqual = (numberAsInt - otherNumberAsInt == 0) ? YES : NO;
    BOOL numberIsHigher = (numberAsInt - otherNumberAsInt > 0) ? YES : NO;
    BOOL otherNumberIsHigher = (numberAsInt - otherNumberAsInt < 0) ? YES : NO;
    
    //Based on which is higher, loop thru adding to array and boxing as NSNumber
    if (isEqual) {
        [output addObject:[NSNumber numberWithInt:numberAsInt]];
    }
    else if (numberIsHigher) {
        for (int counter = 0; counter <= (numberAsInt-otherNumberAsInt); counter++) {
            [output addObject:[NSNumber numberWithInt:otherNumberAsInt+counter]];
        }
    }
    else if (otherNumberIsHigher) {
        for (int counter = 0; counter <= (otherNumberAsInt-numberAsInt); counter++) {
            [output addObject:[NSNumber numberWithInt:numberAsInt+counter]];
        }
    }
    
    return output;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSInteger lowestNumber = [arrayOfNumbers[0] longValue];
    
    for (int index=1; index<arrayOfNumbers.count; index++) {
        if ([arrayOfNumbers[index] longValue]<lowestNumber) {
            lowestNumber = [arrayOfNumbers[index] longValue];
        }
    }
    
    return lowestNumber;
}

@end
