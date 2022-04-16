import UIKit

/**
 # var / let
 
 - Use let to make a constant and var to make a variable.
 */

var greeting = "Hello, playground"


greeting = "Hello"
print(greeting)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

print(fruitSummary)

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

print(quotation)

var shoppingList = ["catfish", "water", "tulips"]

shoppingList.append("blue paint")
print(shoppingList)

var occupations = ["key":"value"]

shoppingList = []
occupations = [:]

print(occupations)
