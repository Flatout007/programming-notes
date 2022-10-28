# Queues

:heavy_check_mark: Like ```stacks```, ```queues``` are ```arrays``` with three restrictions (it’s just a different set of restrictions)

- ```Data``` can only be ```inserted``` at the ```end``` of a ```queue```. (This is identical behavior as the ```stack```.)
- ```Data``` can only be ```read``` from the ```front``` of a ```queue```. (This is the opposite of behavior of the ```stack```.)
- ```Data``` can only be ```removed``` from the ```front``` of a ```queue```. (This, too, is the opposite behavior of the ```stack```.)


## ```Queue Algorithm```
:heavy_check_mark: Lets say your are ```programming``` a simple ```Ruby interface``` that can accept printing jobs from various ```computers``` across a ```network```.

_**N.B**_ below is a simple ```program``` to manage ```printing``` jobs by using ```queue methods``` ```push``` and ```shift```

```rb
class PrintManager

    def initialize
        @queue = []
    end

    def queue_print_job(document)
        @queue.push(document)
    end

    def run
        while @queue.any?
            # the Ruby shift method removes and returns the
            # first element of an array:
            print(@queue.shift)
        end
    end

    private;

    def print(document)
        # Code to run the actual printer goes here.
        # For demo purposes, we’ll print to the terminal:
        puts document
    end
end
```