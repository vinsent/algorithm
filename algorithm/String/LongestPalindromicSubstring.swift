//
//  LongestPalindromicString.swift
//  algorithm
//
//  Created by z z on 2026/3/26.
//

import Foundation

/*
 
     Given a string s, return the longest palindromic substring in s.

      

     Example 1:

     Input: s = "babad"
     Output: "bab"
     Explanation: "aba" is also a valid answer.
     Example 2:

     Input: s = "cbbd"
     Output: "bb"
     
 */

func longestPalindrome(_ s: String) -> String {
    let count = s.count
    
    guard count > 1 else { return s }
    
    var arr = Array(s), dp = Array(repeating: Array(repeating: false, count: count), count: count)
    var lhs = 0, rhs = 0
    
    for i in 1 ..< count {
        for j in 0 ..< i where arr[j] == arr[i] && (dp[j + 1][i - 1] || i - j <= 2) {
            dp[j][i] = true
            if i - j > rhs - lhs {
                rhs = i
                lhs = j
            }
        }
    }
    
    return String(arr[lhs ... rhs])
}
