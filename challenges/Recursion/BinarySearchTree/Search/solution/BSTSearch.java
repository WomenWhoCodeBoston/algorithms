/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
class Solution {
    public TreeNode searchBST(TreeNode root, int val) {
        if (root == null) {
            return null; // base case for not found
        }
        
        if (root.val == val) {
            return root; // base case for found
        }
        
        if (root.val > val) {
            return searchBST(root.left, val); // recursive call - value is less than value at root
        }
        
        return searchBST(root.right, val); // recursive call - value is greater than value at root
    }
}
