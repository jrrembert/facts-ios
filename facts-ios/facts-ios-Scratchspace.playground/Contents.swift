//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Swift Recap

var someVariable = "aVariable"


let someConstant = 20

someVariable = "anotherString"

//var fruitsArray: [String] = ["apples"]
var fruitsArray = ["apples"]
fruitsArray.append("bananas")

fruitsArray

//Optionals

var optionalString: String? = "hello"

optionalString = nil

println("\(someVariable)")


//Functions

func isDivisible(#dividend: Int, #divisor: Int) -> Bool {
    if dividend % divisor == 0 {
        return true
    } else {
        return false
    }
}

isDivisible(dividend: 2,divisor: 2)
isDivisible(dividend: 1, divisor: 2)

func isNotDivisible(#dividend: Int, #divisor: Int) -> Bool {
    return !isDivisible(dividend: dividend, divisor: divisor)
}

isNotDivisible(dividend: 2,divisor: 2)
isNotDivisible(dividend: 1, divisor: 2)

//Tuples

func greeting(person: String) -> (String,String) {
    let language = "English"
    let greeting = "Hello \(person)"
    let v = (greeting, language)
    return v
}

let h = greeting("Ryan")

h.0
h.1

var randomNumber = Int(arc4random_uniform(10))


//Colors

var redColor = UIColor(red: 233/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)

