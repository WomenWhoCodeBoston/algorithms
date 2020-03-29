class Solution {
    HashMap<Integer, Integer> cache = new HashMap<Integer, Integer>();
    
    public int fib(int N) {
        // using memoization, check cache first
        if (cache.containsKey(N)) {
            return cache.get(N);
        }
        
        // not in cache
        int result;
        if (N <= 1) {
            result = N; // base case
        } else {
            result = fib(N-1) + fib(N-2); // recurrence case
        }
        
        // save in cache
        cache.put(N, result);
        return result;
    }
}
