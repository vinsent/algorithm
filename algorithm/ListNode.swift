//
//  ListNode.swift
//  algorithm
//
//  Created by z z on 2026/3/28.
//

import Foundation

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode {
    func toArray() -> [Int] {
        var r = [Int]()
        var t: ListNode? = self
        while let n = t {
            r.append(n.val)
            t = n.next
        }
        return r
    }
}
