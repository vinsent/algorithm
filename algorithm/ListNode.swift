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

extension Array where Element == Int {
    func toListNode() -> ListNode? {
        let head = ListNode()
        var temp = head
        for integer in self {
            let node = ListNode(integer)
            temp.next = node
            temp = node
        }
        return head.next
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var res = "\(val)"
        var temp = self.next
        while let node = temp {
            res += " -> \(node.val)"
            temp = node.next
        }
        return res
    }
}
