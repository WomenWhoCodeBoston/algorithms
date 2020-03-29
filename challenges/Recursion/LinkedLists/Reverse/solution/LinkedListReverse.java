/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        // recursive approach
        
        // base case
        if (head == null || head.next == null) {
            return head;
        }
        
        // recursive call - reverse everything after head
        ListNode newHead = reverseList(head.next);
        // add head to the end
        head.next.next = head;
        // ensure the linked list ends after head which is now added to the end
        head.next = null;
        // return the new head
        return newHead;
    }
}
