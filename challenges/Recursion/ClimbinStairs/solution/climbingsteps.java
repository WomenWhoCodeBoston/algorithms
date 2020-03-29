class Solution {
    // using memoization - cache
    HashMap<Integer, Integer> cache = new HashMap<Integer, Integer>();
    
    public int climbStairs(int n) {
        // check in cache
        if (cache.containsKey(n)) {
            return cache.get(n);
        }
        
        int result;
        if (n <= 2) {
            result = n; // base case
        } else {
            result = climbStairs(n-1) + climbStairs(n-2); // recursive case
        }
        
        cache.put(n, result); // save in cache before return
        return result;
    }
}
