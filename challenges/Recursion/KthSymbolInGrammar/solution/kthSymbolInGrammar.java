class Solution {
    public int kthGrammar(int N, int K) {
        if (K == 1) {
            return 0;
        }
        
        if (K % 2 == 0) {
            return 1- kthGrammar(N-1, K/2);
        }
        
        return kthGrammar(N-1, (K+1)/2);
    }
}
