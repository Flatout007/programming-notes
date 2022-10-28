
# Selection Sort

:heavy_check_mark: ```Selection Sort``` is a basic to intermediate ```sorting``` ```algorithm```, and follows these ```steps```:

- 1. We check each ```cell``` of the ```array``` from left to right to determine which
value is least. As we move from ```cell``` to ```cell```, we keep in a ```variable``` the
lowest value we’ve encountered so far.
If we encounter a ```cell``` that contains a value that is even
less than the one in our ```variable```, we replace it so that the ```variable``` now
points to the new ```index```.
---
- 2. Once we’ve determined which ```index``` contains the lowest value, we ```swap```
that ```index``` with the value we began the passthrough with. 
This would be ```index``` 0 in the first passthrough, ```index``` 1 in the second passthrough, and so on and so forth.
---
- 3. Repeat ```steps``` 1 and 2 until all the ```data``` is ```sorted```

_**N.B**_

Below is an implementation of ```selection sort``` in ```javascript```

```js
function selectionSort(array) {

 for(var i = 0; i < array.length; i++) {

    var lowestNumberIndex = i;

    for(var j = i + 1; j < array.length; j++) {

        if(array[j] < array[lowestNumberIndex]) {
            lowestNumberIndex = j;
        }
    }

    if(lowestNumberIndex != i) {
        var temp = array[i];
        array[i] = array[lowestNumberIndex];
        array[lowestNumberIndex] = temp;
    }
 }

 return array;
}
```