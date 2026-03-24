//
//  MergeOverlappIntervals.swift
//  algorithm
//
//  Created by z z on 2026/3/24.
//

/*
Description:
   Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.
 
Example 1:
   Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
   Output: [[1,6],[8,10],[15,18]]
   Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
 
Example 2:
   Input: intervals = [[1,4],[4,5]]
   Output: [[1,5]]
   Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 
*/
 
func merge(_ intervals: [[Int]]) -> [[Int]] {
    guard intervals.count > 1 else { return intervals }
    
    let intervals = intervals.sorted { $0[0] < $1[0] }
    
    var res = [intervals[0]]
    
    for part in intervals.suffix(from: 1) {
        let last = res[res.count - 1]
        if part[0] <= last[1] {
            res[res.count - 1] = [last[0], max(last[1], part[1])]
        } else {
            res.append(part)
        }
    }
    return res
}
