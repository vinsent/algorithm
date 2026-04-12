//
//  LongestConsecutiveSequence.swift
//  algorithm
//
//  Created by z z on 2026/4/12.
//

import Foundation

/**
 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

 You must write an algorithm that runs in O(n) time.

 Example 1:
 Input: nums = [100,4,200,1,3,2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
 
 Example 2:
 Input: nums = [0,3,7,2,5,8,4,6,0,1]
 Output: 9
 
 Example 3:
 Input: nums = [1,0,1,2]
 Output: 3
 */

func longestConsecutive(_ nums: [Int]) -> Int {
    let numsSet = Set(nums)
    var maxCount = 0
    
    for num in nums where !numsSet.contains(num - 1) {
        var checkNum = num, count = 0
        
        while numsSet.contains(checkNum) {
            checkNum += 1
            count += 1
        }
        
        maxCount = max(maxCount, count)
    }
    
    return maxCount
}
