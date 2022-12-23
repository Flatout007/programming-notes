
A ```combination``` is a ```subset``` of some given ```set``` of items.
Therefore all ```combinations``` are all possible ```subsets``` of a set.

For example, every subset of ```{0, 1, 2}``` is as 
follows:
```
{}
{0}
{1}
{2}
{0,1}
{0,2}
{1,2}
{0,1,2}
```

```java
public static void printCombos(int[] combo, int k) {
 
 // This itself is a valid combination.
 print(combo, k, true);

 // Determine the smallest item that can go in slot k.
 int start = 0;

 if (k > 0) start = combo[k-1] + 1;

 // Same as odometer, except a different start value.
 for (int i=start; i<combo.length; i++) {
    combo[k] = i;
    printCombos(combo, k+1);
 }
}
```