class Solution {
    public double myPow(double x, int n) {
        if (n == 0) {
            return 1; // base case
        }
        
        if (n == 1) {
            return x; // base case
        }
        
        if (n == -1) {
            return 1/x;
        }
        
        // memoization
        double computedValue = myPow(x, n/2);
        
        if (n % 2 == 0) { // power is divisible by 2
            return computedValue * computedValue;
        }
        
        if (n > 0) { // power is positive
            return x * computedValue * computedValue;
        }
        
        // power is negative, so invert x
        return 1/x * computedValue * computedValue;
    }
}
