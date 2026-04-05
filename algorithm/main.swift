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

print("Two sum II: \(twoSumII([2,7,11,15], 9))")

var duplicatesNode = [1, 2, 3, 3, 4, 4, 5].toListNode()
print("Delete duplicates: \(deleteDuplicates(duplicatesNode), default: "nil")")

var linkedTail = ListNode(-4)
var linkedList = ListNode(3, ListNode(2, ListNode(0, linkedTail)))
linkedTail.next = linkedList.next
print("Lineked list cycle position node: \(detectCycle(linkedList)?.val, default: "nil")")

print("Merge K sorted lists: \(mergeKLists([[1, 4, 5].toListNode(), [1, 3, 6].toListNode(), [2, 6].toListNode()]), default: "nil")")

print("Partition lists: \(partitionLinkedList([1, 4, 3, 2, 5, 2].toListNode(), 3), default: "nil")")

print("Split linked list in parts: \(splitListToParts([1, 2, 3].toListNode(), 5))")

let duplicateTree = [1,2,3,4,nil,2,4,nil,nil,4,].toTreeNode()
print("Find duplicate subtrees: \(findDuplicateSubtrees(duplicateTree))")

print("Can jump: \(canJump([2,3,1,1,4]))")
