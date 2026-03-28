//
//  RemoveDuplicatesFromLinkedList.swift
//  algorithm
//
//  Created by z z on 2026/3/28.
//

import Foundation

/*
 Given the head of a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list. Return the linked list sorted as well.

  

 Example 1:
 Input: head = [1,2,3,3,4,4,5]
 Output: [1,2,5]
 
 Example 2:
 Input: head = [1,1,1,2,3]
 Output: [2,3]
  
 */

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    let temp: ListNode? = ListNode(-1)
    
    var n = head, t = temp
    var dup: ListNode? = nil
    while n != nil {
        if n?.val == n?.next?.val {
            dup = n
        } else if n?.val != dup?.val {
            t?.next = n
            t = t?.next
        }
        n = n?.next
    }
    t?.next = nil
    
    return temp?.next
}
