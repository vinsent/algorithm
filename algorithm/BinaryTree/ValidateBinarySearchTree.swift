//
//  ValidateBinarySearchTree.swift
//  algorithm
//
//  Created by z z on 2026/4/15.
//

import Foundation

/**
 Given the root of a binary tree, determine if it is a valid binary search tree (BST).

 A valid BST is defined as follows:

 The left subtree of a node contains only nodes with keys strictly less than the node's key.
 The right subtree of a node contains only nodes with keys strictly greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
  

 Example 1:
 Input: root = [2,1,3]
 Output: true
 
 Example 2:
 Input: root = [5,1,4,null,null,3,6]
 Output: false
 Explanation: The root node's value is 5 but its right child's value is 4.
 */

func isValidBST(_ root: TreeNode?) -> Bool {
    
    func trave(_ root: TreeNode?) -> Bool {
        guard let root else { return true }
        
        guard trave(root.left) else { return false }
        
        guard root.val > minNode else { return false }
        minNode = root.val
        
        guard trave(root.right) else { return false }
        
        return true
    }
    
    var minNode = Int.min
    
    return trave(root)
}
