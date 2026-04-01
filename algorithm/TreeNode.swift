//
//  TreeNode.swift
//  algorithm
//
//  Created by z z on 2026/4/1.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

extension TreeNode : CustomStringConvertible {
    public var description: String {
        var res = ""
        
        var queue = [self]
        while !queue.isEmpty {
            let node = queue.removeFirst()
            
            res += "\(node.val),"
            
            if let l = node.left {
                queue.append(l)
            }
            if let r = node.right {
                queue.append(r)
            }
        }
        
        if !res.isEmpty {
            res.removeLast()
        }
        return res
    }
}

extension Array where Element == Int? {
    func toTreeNode() -> TreeNode? {
            guard let f = first else { return nil }
            let root = TreeNode(f ?? 0)
            var queue: [TreeNode] = [root]
            var i = 1
            
            while i < count {
                let node = queue.removeFirst()
                
                if i < count, let leftVal = self[i] {
                    let leftNode = TreeNode(leftVal)
                    node.left = leftNode
                    queue.append(leftNode)
                }
                i += 1
                
                if i < count, let rightVal = self[i] {
                    let rightNode = TreeNode(rightVal)
                    node.right = rightNode
                    queue.append(rightNode)
                }
                i += 1
            }
            return root
        }
}
