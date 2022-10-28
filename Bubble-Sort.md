
# Bubble Sort

:heavy_check_mark: ```Bubble Sort``` is a very basic ```sorting``` ```algorithm```, and follows these ```steps```:

- 1. Point to two consecutive items in the ```array```. (Initially, we start at the very
beginning of the array and point to its first two items.) Compare the first
item with the second one:
---
- 2. If the two items are out of order (in other words, the left value is greater
than the right value), ```swap``` them:
(If they already happen to be in the correct order, do nothing for this
step.)
---
- 3. Move the ```“pointers”``` one ```cell``` to the right:
---
- 4. Repeat ```steps``` 1 through 3 until we have a round in which we didn’t have to make any ```swaps```. This means that the ```array``` is in order
---

_**N.B**_
below is an implementation of ```bubble sort``` in ```python```
```py
def bubble_sort(list):

 unsorted_until_index = len(list) - 1
 sorted = False

 while not sorted:

    sorted = True

    for i in range(unsorted_until_index):

        if list[i] > list[i+1]:
            sorted = False
            # swap
            list[i], list[i+1] = list[i+1], list[i]

    unsorted_until_index = unsorted_until_index - 1

# driver    
list = [65, 55, 45, 35, 25, 15, 10]
bubble_sort(list)
print list
```

**NOTE**
- If you made at least one swap during a passthrough, you'll need to conduct another ```search```.

**NOTE**
- Bubble Sort has an
efficiency of ```O(N^2)```


**N.B**
_the reason that this ```algorithm``` is called ```Bubble Sort```; In each
passthrough, the highest unsorted value ```“bubbles”``` up to its correct position._