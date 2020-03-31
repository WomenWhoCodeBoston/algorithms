A lot of the problems that can be solved recursively can also be solved iteratively.

If you're still new to recursion, we recommend these links from GeeksForGeeks.org to internalize the working of recursive methods before designing methods:
* [Set 1: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion/)
* [Set 2: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-2/)
* [Set 3: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-3/)
* [Set 4: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-4/)
* [Set 5: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-5/)
* [Set 6: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-6/)
* [Set 7: Practice question for Recursion](http://www.geeksforgeeks.org/practice-questions-for-recursion-set-7/)


In the set of problems listed in this section, please attempt to solve the problems **recursively**.
1. Design and implement a method that reverses a string. The input string is given as an array of characters char[]. Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory. e.g. if the input is ['a', 'b', 'c'] then the method should change the input array to ['c', 'b', 'a']. For more details, see [Recursive - String Reverse](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/ReverseString)

2. Design and author a recursive solution to return the nth number in the Fibonacco series. Assume that the 0th number is 0, 1st number is 1, and the nth number greater than 1 is defined as: nth Fibonacci number = (n-1)th Fibonacci number + (n-2)th Fibonacci number. For more details, see [Recursive - Fibonacci](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/Fibonacci)

3. You are climbing a stair case. It takes n steps to reach to the top. Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top? Design a function that takes as input the count of steps, n and returns the distinct number of ways the steps can be climbed. Note: Given n will be a positive integer. For more details see [Climbing stairs - distinct ways](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/ClimbinStairs)

4. Design and author a method that returns the kth symbol in the nth row per the following rules. On the first row, we write a 0. Now in every subsequent row, we look at the previous row and replace each occurrence of 0 with 01, and each occurrence of 1 with 10. Given row N and index K, return the K-th indexed symbol in row N. (The values of K are 1-indexed.) (1 indexed). N will be an integer in the range [1, 30]. K will be an integer in the range [1, 2^(N-1)]. For more details see [Kth symbol in grammar](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/KthSymbolInGrammar)

5. Given a non-negative index k where k ≤ 33, return the kth index row of the Pascal's triangle. Note that the row index starts from 0. e.g. k = 2 should return [1, 2, 1]
Pascal's triangle:
```
      1
     1 1
    1 2 1
   1 3 3 1
  1 4 6 4 1
1 5 10 10 5 1
```
For more details see [nth row of Pascal's Triangle](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/NthRowOfPascalsTriangle)

6. Design and implement a method that merges two sorted linked list based on the integer value in the nodes. Return the head of the merged linked list. For more details see [Linked List: merge two sorted linked list](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/LinkedLists/MergeSortedLists)

7. Design and implement a method that reverses a singly linked list using recursive approach. For more details see [Linked List: reverse](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/LinkedLists/Reverse)

8. Design and implement a method that swaps alternate nodes in a singly linked list. e.g. If the input is `1->2->3->4` then after the method is executed, the linked list should become `2->1->4->3`. For more details see [Linked List: swap alernate pairs](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/LinkedLists/SwapNodesInPairs)

9. Given a binary tree, author a method that recursively computes the maximum depth of the Binary Tree. For more details, see [Binary Tree - max depth](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/BinaryTree/Height)

10. Given a Binary Seach Tree's root node and a given value, return the node in the binary search tree which contains the same value as the given value. Return null if the given value is not found in the BST. For more details, see [Binary Search Tree - Search](https://github.com/WomenWhoCodeBoston/algorithms/tree/master/challenges/Recursion/BinarySearchTree/Search)

The above problems have been borrowed from and can be practiced on: [LeetCode: Principles of Recursion](https://leetcode.com/explore/featured/card/recursion-i/250/principle-of-recursion/)
