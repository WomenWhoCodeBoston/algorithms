/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
 
class Solution {
    public void deleteNode(ListNode node) {
        // do not assume input - reverify constraints
        // if node is null, then it is the end of the linked list
        // if node.next is null, then node is the tail of the linked list
        if (node == null || node.next == null) {
            return;
        }
        
        while (node.next != null) {
            node.val = node.next.val;
            if (node.next.next == null) {
                node.next = null;
                break;
            }
            node = node.next;
        }
    }
}
