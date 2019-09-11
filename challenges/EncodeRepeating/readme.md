# Encode Repeating

## Exercise
* Design and implement a method that updates the string by replacing consecutive repeating characters with a number representing the frequency. The replacement is done only if the string length will get reduced by the process. In addition to `.length`, you may use `.slice!` to implement this method.
   - e.g "*aaabbbbbcccc*" will get replaced to "*a3b5c4*", since *a* is repeated 3 times, *b* is repeated 5 times and *c* is repeated 4 times
   - "*xxxyttttgeee*" will get replaced with "*x3yt4ge3*". *y* and *g* do not get replaced by *y1* and *g1* since that will increase the length of the string.
   - "*ddbbfffgjjjj*" will get replaced with "*ddbbf3gj4*". *dd* and *bb* do not get replaced since the length will remain the same with *d2* and *b2*. *g* does not get replaced with *g1* since that will increase the length.
* Share and explain the time and space complexities for your solution in the comments above the method.
    * If you define the complexities in terms of *n*, be sure to explain what *n* stands for.

<b>Further reading</b>: Read further on [Run-length encoding (RLE)](https://en.wikipedia.org/wiki/Run-length_encoding), the simple form of loss-less data compression that this assignment is based on.
