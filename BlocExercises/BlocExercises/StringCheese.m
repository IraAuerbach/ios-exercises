//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *cheeseStatement = [[@"My favorite cheese is " stringByAppendingString:cheeseName] stringByAppendingString:@"."];
    
    return cheeseStatement;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if ([cheeseName rangeOfString:@"cheese" options:NSCaseInsensitiveSearch].location != NSNotFound){
        NSString *newCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return newCheeseName;
    }
    else{
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheeseNumber;
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        cheeseNumber = @"1 cheese";
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        cheeseNumber = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return cheeseNumber;
}

@end
