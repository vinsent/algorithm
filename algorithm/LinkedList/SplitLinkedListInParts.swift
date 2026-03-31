//
//  SplitLinkedListInParts.swift
//  algorithm
//
//  Created by z z on 2026/3/31.
//

import Foundation

/*
 Given the head of a singly linked list and an integer k, split the linked list into k consecutive linked list parts.

 The length of each part should be as equal as possible: no two parts should have a size differing by more than one. This may lead to some parts being null.

 The parts should be in the order of occurrence in the input list, and parts occurring earlier should always have a size greater than or equal to parts occurring later.

 Return an array of the k parts.

  

 Example 1:
 Input: head = [1,2,3], k = 5
 Output: [[1],[2],[3],[],[]]
 Explanation:
 The first element output[0] has output[0].val = 1, output[0].next = null.
 The last element output[4] is null, but its string representation as a ListNode is [].
 
 Example 2:
 Input: head = [1,2,3,4,5,6,7,8,9,10], k = 3
 Output: [[1,2,3,4],[5,6,7],[8,9,10]]
 Explanation:
 The input has been split into consecutive parts with size difference at most 1, and earlier parts are a larger size than the later parts.
 */

func splitListToParts(_ head: ListNode?, _ k: Int) -> [ListNode?] {
    var res: [ListNode?] = Array(repeating: nil, count: k)
    
    var n = head
    var count = 0
    while n != nil {
        count += 1
        n = n?.next
    }
    
    n = head
    
    var s = count / k, m = count % k
    
    var step = 0, rIdx = 0
    
    var pre: ListNode?
    
    for i in 0 ..< count {
        if i == step {
            res[rIdx] = n
            step += s + (m > 0 ? 1 : 0)
            m -= 1
            rIdx += 1
            if let pre {
                pre.next = nil
            }
        }
        
        pre = n
        n = n?.next
    }
    
    return res
}
