//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Russell Gordon on 2021-03-19.
//

import Foundation

// Create an empty array
var dataSet: [Int] = []

// Populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInput()

// Sort the array
// The & is syntax for Swift that is there to remind you that the array WILL BE MODIFIED
// by the function
bubbleSort(unsorted: &dataSet)

// Print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()
