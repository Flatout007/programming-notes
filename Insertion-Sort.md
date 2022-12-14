
# Insertion Sort

:heavy_check_mark: ```Insertion Sort``` is an intermediate sorting ```algorithm``` and consists of the following ```steps```:

- 1. In the first passthrough, we temporarily ```remove``` the ```value``` at ```index``` 1 (the
second ```cell```) and ```store``` it in a ```temporary variable```. This will leave a gap at that ```index```, since it contains no value:
In subsequent passthroughs, we remove the ```values``` at the subsequent ```indexes```.
---
- 2. We then begin a ```shifting``` phase, where we take each ```value``` to the left of the gap, and ```compare``` it to the ```value``` in the ```temporary variable:``` If the ```value``` to the left of the gap is greater than the ```temporary variable```, we ```shift``` that ```value``` to the right:
As we ```shift``` values to the right, inherently, the gap moves leftwards. As
soon as we encounter a ```value``` that is lower than the temporarily removed ```value```, or we reach the left end of the ```array```, this ```shifting``` phase is over.
---
- 3. We then ```insert``` the temporarily removed ```value``` into the current gap:
---
- 4. We repeat ```steps``` 1 through 3 until the ```array``` is fully sorted

---

_**N.B**_ 
below is ```insertion sort``` in ```python```

```py
def insertion_sort(array):

 for index in range(1, len(array)):

    position = index
    temp_value = array[index]

    while position > 0 and array[position - 1] > temp_value:

        array[position] = array[position - 1]
        position = position - 1

 array[position] = temp_value
```

---

_**N.B**_ 
below is ```insertion sort``` in ```javascript```

```ts
function selectionSort(arr) {

    for (let i = 1; i<arr.length; i++) {
    	
        let position = i;
        const temp = arr[i]
    	
    	while (position > 0) {
            
            // do nothing if left value is less than temp value
    		if (arr[position-1] < temp) 
    		break

            // shift value to right
            arr[position] = arr[position-1]
    		
    	    position--;
    	}
    
    	arr[position] = temp
    }
}
```