//
//  Triangle.swift
//  algorithm
//
//  Created by z z on 2026/4/12.
//

import Foundation

/**
 Given a triangle array, return the minimum path sum from top to bottom.

 For each step, you may move to an adjacent number of the row below. More formally, if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.

 Example 1:
 Input: triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
 Output: 11
 Explanation: The triangle looks like:
    2
   3 4
  6 5 7
 4 1 8 3
 The minimum path sum from top to bottom is 2 + 3 + 5 + 1 = 11 (underlined above).
 
 Example 2:
 Input: triangle = [[-10]]
 Output: -10
 */

func minimumTotal(_ triangle: [[Int]]) -> Int {
    var row = triangle.count - 1
    var sumList = triangle[row]
    
    while row > 0 {
        row -= 1
        
        for i in 0 ..< triangle[row].count {
            sumList[i] = triangle[row][i] + min(sumList[i], sumList[i + 1])
        }
    }
    
    return sumList.first ?? 0
//    return minimumSum(triangle, row: 0, i: 0)
}

// Recursive version
fileprivate func minimumSum(_ triangle: [[Int]], row: Int, i: Int) -> Int {
    guard row < triangle.count else { return 0 }
    return triangle[row][i] + min(minimumSum(triangle, row: row + 1, i: i), minimumSum(triangle, row: row + 1, i: i + 1))
}
