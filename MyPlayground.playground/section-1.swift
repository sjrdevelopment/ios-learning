// Playground - noun: a place where people can play

import UIKit // UIKit also includes the Foundation framework, so no need to import that sepreately


var str = "Hello, playground"
var highScore = 100
highScore = highScore + 50

for i in 0..<100 {
    highScore += 1
}

highScore

var myScore = 100
var firstName = "Stuart"
let isActive = true

println(firstName)

var pattern = "the person is \(firstName) and has \(myScore) score"

println(pattern)

var quantity = 42

println("the person is \(firstName) and has \(myScore * quantity) score")

func myFunction(personName : String, age : Int = 20) -> Int {
    println("This is from the function \(personName)")
    return age
}

myFunction("Stu", age : 26)


var importantDates = [17,18,19]

var fruits = [10, "apple", 20]

importantDates.append(20)
println(importantDates.count)

if(!importantDates.isEmpty) {
    println("there are dates available")
}

for date in importantDates {
    println("The date is \(date)")
}


// Dictionaries

var states = ["AZ" : "Arizona", "CA" : "California"]

var counties : [String:String]

for(code, stateName) in states {
    println("The state code \(code) is for \(stateName)")
}


// Tuples
var myString = "Hello"
var num = 100

var myTuple = (myString, num)

var myOtherTuple = (myString, num, 12345, "some text")

// return a tuple type

func getCurrentSong() -> (name:String, track:Int) {
    return("Smells like teen spirit", 2)
}

var res = getCurrentSong()
println("The song is \(res.name) and at track number \(res.track)")


// optionals

var temp : Int? // optional variable, nil
temp = 19
if temp != nil {
    // add |! at end to demand (force uwnrap) the value - must be known to have a value (in if)
    println("The current temperature is \(temp!) degrees")
}

// optional binding to check if exists - if let
if let results = temp {
    println("option found: \(results)") // dont have to add ! suffix this way
}


// enumerations
// new datatype, not variable, so capitalise
// will want to make others

enum SeatPreference {
    case Window
    case Middle
    case Aisle
    case NoPreference
    // or: case Window, Middle, Aisle, NoPreference
}

// can now use a new SeatPreference:
var stuPrefers = SeatPreference.Aisle // type-infered as a seat preference

switch stuPrefers {
    case .Window:
        println("test Window")
    case .Aisle:
        println("test Aisle")
    case .Middle:
        println("test Middle")
    case .NoPreference:
        println("test No Pref")
}


// Closures

let myClosure = {
    println("Hello im a closure")
}

// this function accepts a closure as a parameter and runs it 5 times
// ()->() means this doesn't take parameters and doesnt return anything
func performFiveTIme(myClosureParam : ()->() ) {
    for i in 1...5 {
        myClosureParam()
    }
}

performFiveTIme(myClosure)


// classes

class Player {
    
    // properties
    var name: String
    var score: Int {
        willSet { // observables
            println("About to change score to \(newValue)")
        }
        didSet {
            println("OK")
        }
    }
    
    // methods
    func description() -> String {
        return("Player \(name) has a score of \(score)")
    }
    
    // default initialiser - reserved keyword 'init'
    init() {
        name = "John Doe"
        score = 0
    }
    
    // initiaiser with parameters
    init(name : String) {
        // self - the current instance of this class (same as 'this' in JS)
        self.name = name
        self.score = 50
    }
}
// don't need new
var jake = Player() // infers Player as data type
println(jake.description())
jake.name = "Jake"
jake.score = 1000
println(jake.description())

var secondPlayer = Player(name: "Alice")
println(secondPlayer.description())


// access modifiers:
// private - only in same file
// internal - other files, but must be same module/compiled module code - DEFAULT in Swift
// public - accessible from any module - other modules can import your code and access the properties or methods
// if methods/props are public, class must be public otherwise wont be visible.


// Structures
// primitivedate types are impemented as Structures, not classes
struct SimpleClass {
    var value : Int = 99
}
// this struct can now be instantiated, but as a copy not a reference when assigned somewhere else or passewd to funciton


// comparison
// == or != (=== and !== only works on objects, not structs)


// Using framework resources - UIKit, Foundation etc
// note - UIKit already included - see top of file
let someString = "Stu is cool"
someString.uppercaseString

let words = someString.componentsSeparatedByString(" ")

let someDate = NSDate()

let someURL = NSURL(string: "http://www.bbc.co.uk/news")
someURL.relativePath


