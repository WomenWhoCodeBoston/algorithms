class Solution {
    public void reverseString(char[] s) {
        if (s == null) {
            return; // check input
        }
        
        recursiveHelper(s.length, 0, s); // call a recursive helper method
        return;
    }
    
    private void recursiveHelper(int sLength, int currentIndex, char[] s) {
        int swapIndex = sLength - currentIndex - 1;
        if (currentIndex >= swapIndex) {
            // base case
            return;
        }
        
        // swap the element at currentIndex
        char temp = s[currentIndex];
        s[currentIndex] = s[swapIndex];
        s[swapIndex] = temp;
        
        // recursive call
        recursiveHelper(sLength, currentIndex+1, s);
        return;
    }
}
