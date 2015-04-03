// Playground - noun: a place where people can play

import UIKit

let truckSpeed = 45
let lamboSpeed = 120
var mySpeed:Int
mySpeed = 80


if mySpeed < 70  {
    println("Keep Cruising")
}
else {
    println("Slow down police ahead")
}

let isTelevisionOn = true

if isTelevisionOn {
    println("turn it off bozo!")
}
else {
    println("watch me!")
}

var intVal = 5
var doubleVal = 0.5

var sum = Double(intVal) + doubleVal

//var meditationHours = 1
for var meditationHours = 1; meditationHours < 10; meditationHours++ {
    println("more gettting smart \(meditationHours)")
    
}

var wheat = 0
for var i = 0; i <= 10; i++ {
    println(i)
    println(2^i)
    //wheat = wheat + 2^i;
}
println(wheat)


//Arrays
var tigerNames = ["Tigger", "Tigress"]
tigerNames.count
tigerNames.append("Jacob")
tigerNames += ["Joe", "Cool"]
tigerNames[1] = "Spar"
println(tigerNames)
tigerNames [0...2] = ["Katie", "James", "George"]
println(tigerNames)
tigerNames.insert("Julie", atIndex:1)
tigerNames.removeLast()
println(tigerNames)
tigerNames.removeAtIndex(2)
println(tigerNames)
tigerNames.removeAll(keepCapacity: false)
println(tigerNames)

//random Number
let randomNum = Int(arc4random_uniform(UInt32(100)))