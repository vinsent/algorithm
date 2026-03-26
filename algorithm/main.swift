//
//  main.swift
//  algorithm
//
//  Created by wangzhen on 2025/5/22.
//

import Foundation

print("Hello, World!")

// Merge all overlapping intervals
let intervals = [[1,3],[2,6],[8,10],[15,18]]
print(merge(intervals))

// Sort colors
var colors = [2,0,2,1,1,0]
sortColors(&colors)
print("Sort colors: \(colors)")

// Longest palindromic substring
print("Longest palindromic substring: \(longestPalindrome("babad"))")
