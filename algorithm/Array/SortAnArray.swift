//
//  SortAnArray.swift
//  algorithm
//
//  Created by z z on 2026/4/15.
//

import Foundation

/**
 Given an array of integers nums, sort the array in ascending order and return it.

 You must solve the problem without using any built-in functions in O(nlog(n)) time complexity and with the smallest space complexity possible.

 Example 1:
 Input: nums = [5,2,3,1]
 Output: [1,2,3,5]
 Explanation: After sorting the array, the positions of some numbers are not changed (for example, 2 and 3), while the positions of other numbers are changed (for example, 1 and 5).
 
 Example 2:
 Input: nums = [5,1,1,2,0,0]
 Output: [0,0,1,1,2,5]
 Explanation: Note that the values of nums are not necessarily unique.
 */

func sortArray(_ nums: [Int]) -> [Int] {
    var nums = nums
//    quickSortProcess(&nums, left: 0, right: nums.count - 1)
    mergeSortProcess(&nums, left: 0, right: nums.count - 1)
    return nums
}

// MARK: - Quick sort
fileprivate func quickSortProcess(_ nums: inout [Int], left: Int, right: Int) {
    guard left < right else { return }
    
    let idx = partition(&nums, left: left, right: right)
    quickSortProcess(&nums, left: left, right: idx)
    quickSortProcess(&nums, left: idx + 1, right: right)
}

fileprivate func partition(_ nums: inout [Int], left: Int, right: Int) -> Int {
    let idx = Int.random(in: left ... right)
    nums.swapAt(idx, right)
    
    var low = left, high = right - 1
    
    while low <= high {
        if nums[low] < nums[right] {
            low += 1
        } else if nums[high] >= nums[right]  {
            high -= 1
        } else {
            nums.swapAt(low, high)
        }
    }
    
    nums.swapAt(low, right)
    
    return low
}

// MARK: - Merge sort
fileprivate func mergeSortProcess(_ nums: inout [Int], left: Int, right: Int) {
    guard left < right else { return }
    
    let mid = left + (right - left) / 2
    
    mergeSortProcess(&nums, left: left, right: mid)
    mergeSortProcess(&nums, left: mid + 1, right: right)
    
    merge(&nums, left: left, mid: mid, right: right)
}

fileprivate func merge(_ nums: inout [Int], left: Int, mid: Int, right: Int) {
    guard left < right else { return }
    
    var low = left, high = mid + 1
    var result = [Int]()
    
    while low <= mid && high <= right {
        if nums[low] <= nums[high] {
            result.append(nums[low])
            low += 1
        } else {
            result.append(nums[high])
            high += 1
        }
    }
    
    while low <= mid {
        result.append(nums[low])
        low += 1
    }
    
    while high <= right {
        result.append(nums[high])
        high += 1
    }
    
    nums[left...right] = result[0...]
}
