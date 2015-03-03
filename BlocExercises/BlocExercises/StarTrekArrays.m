//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *charactersArray = [characterString componentsSeparatedByString:@";"];
    return charactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *mutableCharacterArray = [(NSArray *)characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    return mutableCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    
    if (([characterString rangeOfString:@"worf" options:NSCaseInsensitiveSearch].location != NSNotFound)){
        return YES;
    }
    
    return NO;
}

@end
