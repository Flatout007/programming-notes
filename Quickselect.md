# Quickselect

:heavy_check_mark: Let’s say that you have an ```array``` in ```random``` order, and you do not need to ```sort``` it, but you do want to know the ```second-lowest value``` in the ```array```, or the ```fifth-highest```. 

:heavy_check_mark: The obvious way to solve this would be to ```sort``` the entire ```array``` and then jump to the appropriate ```cell```.

:heavy_check_mark: this algorithm would take at least ```O(N log N)``` for ```average cases```, and while that isn’t bad, we can do even better with a brilliant little ```algorithm``` known as ```Quickselect```.

:heavy_check_mark: ```Quickselect``` relies on ```partitioning``` just like ```Quicksort```, and can be thought of as
a hybrid of ```Quicksort``` and ```binary search```.

## ```Quickselect scenario algorithm```

:heavy_check_mark: Let’s say that we have an ```array``` of ```eight``` ```values```, and we want to find the ```second-to-lowest value``` within the ```array```.

1. First, we ```partition``` the entire ```array```:

---

2. After the ```partition```, the ```pivot``` will hopefully end up somewhere towards the
```middle``` of the ```array```:

---

3. ```ignore``` everything to the ```right``` of the ```pivot```, and focus on the ```left subarray```. (**It is in this respect that ```Quickselect``` is similar to ```binary search```: we keep dividing the ```array``` in ```half```, and focus on the ```half``` in which we know the ```value``` we’re ```seeking``` for**)

---

4. Next, we ```partition``` the ```subarray``` to the ```left``` of the ```pivot```:

---

5. Let’s say that the new ```pivot``` of this ```subarray``` ends up the ```third cell```:
By definition, then, the ```second-to-lowest value``` will be somewhere to its ```left```. We can now ```partition``` the ```subarray``` to the ```left``` of the ```third cell```:

---

6. After this next ```partition```, the ```lowest``` and ```second-lowest``` ```values``` will end up in their correct spots within the ```array```: We can then grab the ```value``` from the ```second cell``` and know with confidence that it’s the ```second-lowest value``` in the entire ```array```


**NOTE** Below is ```Ruby script``` that ```implements``` the ```Quickselect algorithm```

```ruby
def quickselect!(kth_lowest_value, left_index, right_index)

    # If we reach a base case - that is, that the subarray has one cell,
    # we know we’ve found the value we’re looking for
    if right_index - left_index <= 0
        return @array[left_index]
    end

    # Partition the array and grab the position of the pivot
    pivot_position = partition!(left_index, right_index)

    if kth_lowest_value < pivot_position
        quickselect!(kth_lowest_value, left_index, pivot_position - 1)
    elsif kth_lowest_value > pivot_position
        quickselect!(kth_lowest_value, pivot_position + 1, right_index)
    else # kth_lowest_value == pivot_position
        # if after the partition, the pivot position is in the same spot
        # as the kth lowest value, we’ve found the value we’re looking for
        return @array[pivot_position]
    end
end

# driver
array = [0, 50, 20, 10, 60, 30]
p quickselect!(1, 0, array.length - 1)
```