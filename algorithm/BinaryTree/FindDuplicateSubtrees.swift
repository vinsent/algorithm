//
//  FindDuplicateSubtrees.swift
//  algorithm
//
//  Created by z z on 2026/4/1.
//

import Foundation

/*
 Given the root of a binary tree, return all duplicate subtrees.

 For each kind of duplicate subtrees, you only need to return the root node of any one of them.

 Two trees are duplicate if they have the same structure with the same node values.

  

 Example 1:
 Input: root = [1,2,3,4,null,2,4,null,null,4]
 Output: [[2,4],[4]]
 
 Example 2:
 Input: root = [2,1,1]
 Output: [[1]]
 
 Example 3:
 Input: root = [2,2,2,3,null,3,null]
 Output: [[2,3],[3]]
 */

func findDuplicateSubtrees(_ root: TreeNode?) -> [TreeNode?] {
    var res = [TreeNode?]()
    var check = [String : Int]()
    traverse(root, &res, &check)
    return res
}

@discardableResult
fileprivate func traverse(_ root: TreeNode?, _ res: inout [TreeNode?], _ check: inout [String : Int]) -> String {
    guard let root else { return "" }
    
    let key = "\(root.val)-\(traverse(root.left, &res, &check))-\(traverse(root.right, &res, &check))"
    let count = check[key] ?? 0
    check[key] = count + 1
    if check[key] == 2 {
        res.append(root)
    }
    
    return key
}
