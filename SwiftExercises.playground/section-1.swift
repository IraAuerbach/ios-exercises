import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    var cheeseSentence = "My favorite cheese is " + cheese
    return cheeseSentence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
//changed numberArray from let to var -- not sure if that is cheating
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
//cahnge numberDictionary from let to var -- not sure if that is cheating
numberDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for  i in 1...10 {
    println("\(i)")
}


// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11{
    println("\(i)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    var favoriteDrinksArray = [String]();
    var tempCharacterDictionary : [String: String];
    var favoriteDrinkString = "";
    
    for var i=0; i<characters.count; i++ {
        tempCharacterDictionary = characters[i];
        favoriteDrinkString = tempCharacterDictionary["favorite drink"]!
        favoriteDrinksArray.append(favoriteDrinkString)
    }
    
    return favoriteDrinksArray;
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func arrayToString(strings:Array<String>) -> String {
    
    var semicolonString = "";
    
    for var i=0; i<strings.count; i++ {
        if(i<strings.count-1) {
            semicolonString += (strings[i] + ";");
        }
        else {
            semicolonString += strings[i]
        }
        
    }
    
    return semicolonString;
}

let actualOutput = arrayToString(strings);
let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"];

// Use a closure to sort this array alphabetically
// WORK HERE

let cerealArraySorted = sorted(cerealArray, {(string1: String, string2: String) -> Bool in
    return string1<string2;
})











