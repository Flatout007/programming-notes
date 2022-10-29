
# Quicksort

:heavy_check_mark: The ```Quicksort algorithm``` relies heavily on ```partitions```. It works as follows:

1. ```Partition``` the ```array```. The pivot is now in its proper place.

---

2. Treat the ```subarray``` to the ```left``` and ```right``` of the ```pivot``` as their own ```arrays```,
and ```recursively``` ```repeat``` steps ```#1``` and ```#2```. That means that we’ll ```partition``` each ```subarray```, and end up with even smaller ```subarrays``` to the ```left``` and ```right``` of each ```subarray’s pivot```. We then ```partition``` those ```subarrays```, and so on and so forth.

---

3. When we have a ```subarray``` that has ```zero``` or ```one``` ```elements```, that is our ```base case``` and we ```do nothing```.

**NOTE** Below is ```Ruby script``` that ```implements``` the ```Quicksort algorithm```

```ruby
def quicksort!(left_index, right_index)

    # base case: the subarray has 0 or 1 elements
    if right_index - left_index <= 0
        return
    end

    # Partition the array and grab the position of the pivot
    pivot_position = partition!(left_index, right_index)

    # Recursively call this quicksort method on whatever is to the left of the pivot:
    quicksort!(left_index, pivot_position - 1)

    # Recursively call this quicksort method on whatever is to the right of the pivot:
    quicksort!(pivot_position + 1, right_
end

# driver
array = [0, 5, 2, 1, 6, 3]
quicksort!(0, array.length - 1)
p array
```