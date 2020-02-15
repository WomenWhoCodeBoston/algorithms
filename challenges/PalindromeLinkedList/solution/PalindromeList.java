/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
class Solution {
    public boolean isPalindrome(ListNode head) {
        if (head == null || head.next == null) {
            return true;
        }
        
        // find the middle
        ListNode fast = head;
        ListNode slow = head;
        while (fast.next != null) {
            fast = fast.next;
            if (fast.next == null) {
                break;
            }
            fast = fast.next;
            slow = slow.next;
        }
        
        // reverse the second half
        ListNode mid = slow;
        ListNode previous = slow;
        ListNode current = slow.next;
        while (current != null) {
            ListNode temp = current.next;
            current.next = previous;
            previous = current;
            current = temp;
        }
        ListNode last = previous;
        
        // verify palindrome
        boolean pal = true;
        current = head;
        ListNode reverse = last;
        while (reverse != current && reverse != mid) {
            if (reverse.val != current.val) {
                pal = false;
                break;
            }
            reverse = reverse.next;
            current = current.next;
        }
        
        // re-reverse the second half
        previous = null;
        current = last;
        while (current != slow) {
            ListNode temp = current.next;
            current.next = previous;
            previous = current;
            current = temp;
        }
        
        return pal;
    }
}
