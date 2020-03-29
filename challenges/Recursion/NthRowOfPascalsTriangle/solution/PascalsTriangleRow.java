class Solution {
    public List<Integer> getRow(int rowIndex) {
        if (rowIndex < 0) {
            return null;
        }
        
        List<Integer> newRow = new ArrayList<Integer>();
        newRow.add(1);
        if (rowIndex == 0) {
            return newRow;
        }
        
        return getRow(newRow, 0, rowIndex);
    }
    
    private List<Integer> getRow(List<Integer> currentRow, int currentIndex, int rowIndex) {
        List<Integer> newRow = new ArrayList<Integer>();
        newRow.add(1);
        
        
        for (int i = 0; i < currentRow.size()-1; i++) {
            newRow.add(currentRow.get(i) + currentRow.get(i+1));
        }
        
        newRow.add(1);
        
        if (currentIndex+1 == rowIndex) {
            // base case
            return newRow;
        }
        
        return getRow(newRow, currentIndex+1, rowIndex); // recursive case
    }
}
