//
//  MergeSortedLists.swift
//  algorithm
//
//  Created by z z on 2026/3/30.
//

import Foundation

/*
 You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

 Merge all the linked-lists into one sorted linked-list and return it.

  

 Example 1:

 Input: lists = [[1,4,5],[1,3,4],[2,6]]
 Output: [1,1,2,3,4,4,5,6]
 Explanation: The linked-lists are:
 [
   1->4->5,
   1->3->4,
   2->6
 ]
 merging them into one sorted linked list:
 1->1->2->3->4->4->5->6
 
 
 Example 2:
 Input: lists = []
 Output: []
 
 
 Example 3:
 Input: lists = [[]]
 Output: []
 */

func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    guard !lists.isEmpty else { return nil }
    
    var sortedList = lists.sorted(by: { $0?.val ?? 0 < $1?.val ?? 0 })
    
    let head = ListNode(-1)
    var temp: ListNode? = head
    
    while !sortedList.isEmpty  {
        
        guard let node = sortedList[0] else {
            sortedList.removeFirst()
            continue
        }
        
        temp?.next = node
        temp = temp?.next
        
        guard let next = node.next else {
            sortedList.removeFirst()
            continue
        }
        
        sortedList[0] = next
        for i in 0 ..< sortedList.count - 1 {
            if sortedList[i]?.val ?? 0 > sortedList[i + 1]?.val ?? 0 {
                sortedList.swapAt(i, i + 1)
            } else {
                break
            }
        }
    }
    
    return head.next
}
