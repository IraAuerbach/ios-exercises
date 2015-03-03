//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    id favoriteDrink = characterDictionary[@"favorite drink"];
    
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]){
        return favoriteDrink;
    }
    
    return @"";
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    //I used an NSMutableArray instead of NSArray, not sure if that is cheating but I couldnt figure out any other way to do it
    NSMutableArray *favoriteDrinkArray = [[NSMutableArray alloc] init];
    
    for(NSInteger index = 0; index < charactersArray.count; index++){
        if (charactersArray[index] != nil && [charactersArray[index] isKindOfClass:[NSDictionary class]]) {
            NSDictionary *characterDetails = charactersArray[index];
            NSString *favoriteDrinks = characterDetails[@"favorite drink"];
            [favoriteDrinkArray addObject:favoriteDrinks];
        }
    }
    
    return favoriteDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *characterDictionaryWithQuoteAdded = [characterDictionary mutableCopy];
    [characterDictionaryWithQuoteAdded setObject:@"I have a dream!" forKey:@"quote"];
    
    return characterDictionaryWithQuoteAdded;
}

@end
