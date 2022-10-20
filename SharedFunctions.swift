//
//  SharedFunctions.swift
//  BubbleSortAlgorithm
//
//  Created by Russell Gordon on 2021-03-23.
//

import Foundation

// Pause to allow the user to see output
func waitForInput() {
    print("\nPress RETURN to contiue...")
    _ = readLine()
}

// Accepts an unsorted array and returns a sorted one
// To allow the array to be passed by reference (rather than a copy) we will mark
// the parameter as "inout" which means we can change the ORIGINAL from outside the
// function
func bubbleSort(unsorted dataSet: inout [Int], showPrompts: Bool = true) {
    
    // Keep track of whether numbers were swapped
    var swapped = false

    // Loop through the entire array "n" times
    // (however many times there are elements in the array
    for i in 0..<dataSet.count {

        // Set the swapped flag to false
        swapped = false

        // One pass through the array to float the highest number to the end
        // "i" will equal the number of sorted elements after each pass
        for j in 0..<dataSet.count - 1 - i {
            
            // What comparison is this?
            if showPrompts {
                print("Pass \(i + 1), comparison \(j + 1)...", terminator: "")
            }
            
            // Compare left value to right value
            if dataSet[j] > dataSet[j + 1] {
                
                // Swap values when left value is greater than the right value
                let temporaryValue = dataSet[j]     // Set aside the left value
                dataSet[j] = dataSet[j + 1]         // Replace left with right
                dataSet[j + 1] = temporaryValue     // Replace right with temporary value
                
                // A swap occured
                swapped = true
                print(" swap occurred.", terminator: "")
                
            }
            
            // Go to next line for output
            print("")
            
            
        }
        
        // Stop further passes if there were no swaps
        if swapped == false {
            break
        }
        
        // Print the array after "n" passes
        if showPrompts {
            print("Array after pass \(i + 1)")
            print(dataSet)
            waitForInput()
        }
        
    }
    
}
