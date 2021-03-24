//
//  main.swift
//  BinarySearchAlgorithm
//
//  Created by Russell Gordon on 2021-03-23.
//

import Foundation

// Create an empty array
var dataSet: [Int] = []

// Populate the array
for _ in 1...15 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInput()

// Sort the array
bubbleSort(unsorted: &dataSet, showPrompts: false)

// Print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()

// Decide on a value to search for (four options, uncomment to use)

// 1. Random element within the array
let target = dataSet[Int.random(in: 0...dataSet.count - 1)]
// 2. The last element
//let target = dataSet[dataSet.count - 1]
// 3. The first element
//let target = dataSet[0]
// 4. A value guaranteed to be greater than the highest value
//let target = dataSet[dataSet.count - 1] + 5

// Set the start and end positions
var start = 0
var end = dataSet.count - 1

// Track whether the target was found
var targetFound = false

// Loop until a value is found or we run out of positions to search within
while start <= end {
    
    // Find the middle of the array
    let middle = (start + end) / 2

    // Print where we are and the contents of the array
    print("Start is: \t\t\(start)")
    print("Middle is: \t\t\(middle)")
    print("End is: \t\t\(end)")
    print("Target is: \t\t\(target)")
    print("------")
    print("Index:\t", terminator: "")
    for i in start...end {
        print("\(i)\t", terminator: "")
    }
    print("")
    print("Values: ", terminator: "")
    for i in start...end {
        print("\(dataSet[i])\t", terminator: "")
    }
    print("")
    waitForInput()

    // Did we find the target?
    if dataSet[middle] == target {
        print("== Found the target of \(target) at position \(middle) ==")
        targetFound = true
        break
    } else if dataSet[middle] < target {
        // The target is to the right
        start = middle + 1
        print("== Target not found ==\n")
    } else {
        // The target is to the left
        end = middle - 1
        print("== Target not found ==\n")
    }
    
}

// Was the target found?
if !targetFound {
    print("== The target of \(target) was not found in the array. ==")
}
