/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
 
class Solution {
    public ListNode swapPairs(ListNode head) {
        if (head == null || head.next == null) {
            // base case
            return head; // if only one node (not a pair), or no nodes, then return
        }
        
        // recursive case
        ListNode returnNode = head.next; // the second node needs to be returned
        ListNode temp = returnNode.next; // recursively call the method on this node
        returnNode.next = head; // do the current pair swap
        head.next = swapPairs(temp); // recursive case
        return returnNode; // this is not a tail recursion
    }
}
