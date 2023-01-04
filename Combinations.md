
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

```javascript
function printCombos(arr) {

  /**@algorithm
   * for each arr[i]
   * copy all previous cells into the next cells (matrix[i]),
   * push the current arr[i] into each new cell (matrix[i]).
   */

  const mat = [ 
   []
  ];

  let start = 1;
  
  for (let i = 0; i<arr.length; i++) {

      let j = 0;
      let prevLen = mat.length;
      let start = prevLen;

      while (j < prevLen) {

          mat.push(mat[j]);

          j++;
      }

      prevLen = mat.length;

      for (let k = start; k<prevLen; k++) {

          // creates copy to avoid overwriting
          mat[k] = mat[k].slice(0);
        
          mat[k].push(arr[i]); 
      }
  }

  return mat;
}



printCombos([0,1,2,4])
```