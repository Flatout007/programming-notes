# Partitioning

:heavy_check_mark: To ```partition``` an ```array``` is to take a ```random value``` from the ```array```—which is then
called the ```pivot```—and make sure that every ```number``` that is ```less``` than the ```pivot```
ends up to the left of the ```pivot```, and that every ```number``` that is ```greater``` than the ```pivot``` ends up to the right of the ```pivot```.

_**NOTE**_.  Its ```common practice``` to always ```select``` the ```right-most value```to be the ```pivot```
 
:heavy_check_mark: The ```partitioning algorithm``` follows these ```steps```:

1. The ```left pointer``` continuously moves one ```cell``` to the right ```until``` it reaches a
value that is ```greater than``` or ```equal to``` the ```pivot```, and then stops.

---

2. Then, the ```right pointer``` ```continuously``` moves one ```cell``` to the left ```until``` it
reaches a ```value``` that is ```less than``` or ```equal to``` the ```pivot```, and then stops.

---

3. We ```swap``` the ```values``` that the ```left``` and ```right pointers``` are ```pointing``` to.

---

4. We ```continue``` this process ```until``` the ```pointers``` are ```pointing``` to the very same ```value``` or the ```left pointer``` has moved to the ```right``` of the ```right pointer```.

---
5. Finally, we ```swap``` the ```pivot``` with the ```value``` that the ```left pointer``` is currently ```pointing``` to

_**NOTE**_. Below is a simple ```Ruby Script``` that ```partitions``` an ```array```

```rb
def partition!(left_pointer, right_pointer)

    # We always choose the right-most element as the pivot
    pivot_position = right_pointer
    pivot = @array[pivot_position]

    # We start the right pointer immediately to the left of the pivot
    right_pointer -= 1;

    while true do

        while @array[left_pointer] < pivot do
            left_pointer += 1
        end

        while @array[right_pointer] > pivot do
            right_pointer -= 1
        end

        if left_pointer >= right_pointer
            break
        else
            swap(left_pointer, right_pointer)
        end
    end

    # As a final step, we swap the left pointer with the pivot itself
    swap(left_pointer, pivot_position)

    # We return the left_pointer for the sake of the quicksort method
    # which relies on this algorithm
    return left_pointer
end
```