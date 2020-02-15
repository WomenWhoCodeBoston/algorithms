/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
class Solution {
    public ListNode removeNthFromEnd(ListNode head, int n) {
        if (head == null) {
            return head; // empty linked list provided
        }
        
        ListNode forward = head;
        while (forward != null && n > 1) {
            forward = forward.next;
            n--;
        }
        
        if (forward == null) {
            return head; // less nodes in linked list then n
        }
        
        if (forward.next == null) {
            // delete the head node
            return head.next;
        }
        
        ListNode backward = head;
        while (forward.next.next != null) {
            backward = backward.next;
            forward = forward.next;
        }
        backward.next = backward.next.next;
        return head;
        
    }
}
