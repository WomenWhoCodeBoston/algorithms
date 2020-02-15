/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
class Solution {
    public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
        if (l1 == null) {
            return l2;
        } else if (l2 == null) {
            return l1;
        }
        
        ListNode head = null;
        ListNode current = null;
        while (l1 != null && l2 != null) {
            if (l1.val <= l2.val) {
                if (current == null) {
                    head = l1;
                    current = head;
                } else {
                    current.next = l1;
                    current = current.next;
                }
                l1 = l1.next;
            } else {
                if (current == null) {
                    head = l2;
                    current = head;
                } else {
                    current.next = l2;
                    current = current.next;
                }
                l2 = l2.next;
            }
        }
        
        ListNode temp = null;
        if (l2 != null) {
            current.next = l2;
        } else if (l1 != null) {
            current.next = l1;
        } else {
            current.next = null;
        }
        
        return head;
    }
}
