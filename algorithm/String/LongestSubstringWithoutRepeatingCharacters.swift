//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  algorithm
//
//  Created by z z on 2026/4/25.
//

import Foundation

/**
 Given a string s, find the length of the longest substring without duplicate characters.

  

 Example 1:

 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.
 Example 2:

 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
  

 Constraints:

 0 <= s.length <= 5 * 104
 s consists of English letters, digits, symbols and spaces.
 */

func lengthOfLongestSubstring(_ s: String) -> Int {
    var sub = [Character]()
    var maxCount = 0
    
    for c in s {
        if sub.contains(c) {
            maxCount = max(maxCount, sub.count)
            while sub.contains(c) {
                sub.removeFirst()
            }
        }
        sub.append(c)
    }
    
    // Check the last batch characters
    maxCount = max(maxCount, sub.count)
    
    return maxCount
}
