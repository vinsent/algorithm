//
//  PartitionList.swift
//  algorithm
//
//  Created by z z on 2026/3/30.
//

import Foundation

/*
 Given the head of a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

 You should preserve the original relative order of the nodes in each of the two partitions.

  

 Example 1:
 Input: head = [1,4,3,2,5,2], x = 3
 Output: [1,2,2,4,3,5]
 
 Example 2:
 Input: head = [2,1], x = 2
 Output: [1,2]
 */

func partitionLinkedList(_ head: ListNode?, _ x: Int) -> ListNode? {
    var temp = head
    let smallHead = ListNode(-1)
    let greateHead = ListNode(-1)
    var small: ListNode? = smallHead
    var greate: ListNode? = greateHead
    
    while temp != nil {
        if let value = temp?.val, value < x {
            small?.next = temp
            small = small?.next
        } else {
            greate?.next = temp
            greate = greate?.next
        }
        temp = temp?.next
    }
    
    greate?.next = nil
    small?.next = greateHead.next
    
    return smallHead.next
}
