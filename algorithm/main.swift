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

var duplicatesNode = ListNode(1, ListNode(2, ListNode(3, ListNode(3, ListNode(4, ListNode(4, ListNode(5)))))))
print("Delete duplicates: \(deleteDuplicates(duplicatesNode)?.toArray(), default: "nil")")

var linkedTail = ListNode(-4)
var linkedList = ListNode(3, ListNode(2, ListNode(0, linkedTail)))
linkedTail.next = linkedList.next
print("Lineked list cycle position node: \(detectCycle(linkedList)?.val, default: "nil")")

print("Merge K sorted lists: \(mergeKLists([ListNode(1, ListNode(4, ListNode(5))), ListNode(1, ListNode(3, ListNode(6))), ListNode(2, ListNode(6))])?.toArray(), default: "nil")")

print("Partition lists: \(partitionLinkedList(ListNode(1, ListNode(4, ListNode(3, ListNode(2, ListNode(5, ListNode(2)))))), 3)?.toArray(), default: "nil")")


print("Split linked list in parts: \(splitListToParts(ListNode(1, ListNode(2, ListNode(3))), 5), default: "nil")")
