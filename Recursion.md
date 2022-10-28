# Recursion

:heavy_check_mark:  ```Recursion``` is the official name for when a ```function``` ```calls``` itself. 

```ruby
def func :A
    func :A
end
```

_**N.B**_ 
notice the ```code``` above will ```call``` itself ```infinitely```

:heavy_check_mark: While ```infinite``` ```function calls``` are generally useless—and even dangerous—```recursion``` is a powerful ```tool``` that can be harnessed.

## ```Base Case```

:heavy_check_mark: The ```base case``` tells the ```computer``` when to stop ```calling``` itself

_**N.B**_ 
Here’s a ```recursive``` ```implementation``` that ```returns``` a
```number’s``` ```factorial``` using ```Ruby```:

```ruby
def factorial(number)
    
    if number == 1 # base case
        return 1
    else
        # recursive step
        return number * factorial(number - 1)
    end
end
```

:heavy_check_mark: Examine the ```base case```, Notice how no ```recursion``` actually happens".  If we ```call``` ```factorial(1)```, the ```method``` simply ```returns``` ```1```.  

:heavy_check_mark: So, calling factorial(2) will return ```2 * factorial(1)```. Since we know what ```factorial(1)``` ```returns```. We know that it ```returns 1```. So ```2 * factorial(1)``` will return ```2 * 1```, which is ```2```

:heavy_check_mark: So ```factorial(3)``` will return ```(3 * factorial(2))``` which is ```6```

## ```Recursion in the Eyes of the Computer```

:heavy_check_mark: If you think about our ```factorial``` ```method``` above, you’ll realize when we ```call``` ```factorial(3)```, the following happens:

- The ```computer``` uses a ```stack``` to keep track of which ```functions``` it’s in the middle of ```calling```. This ```stack``` is known, appropriately enough, as the ```call stack```.
---
- The ```computer``` begins by ```calling``` factorial(3). Before the ```method``` completes
```executing```, however, ```factorial(2)``` gets ```called```. In order to track that the computer is still in the middle of ```factorial(3)```, the ```computer``` ```pushes``` that info onto a ```call
stack```
---
- The ```computer``` then proceeds to ```execute``` ```factorial(2)```. Now, ```factorial(2)```, in turn, ```calls``` ```factorial(1)```. Before the ```computer``` dives into ```factorial(1)```, though, the ```computer``` needs to remember that it’s still in the middle of ```factorial(2)```, so it ```pushes``` that onto the ```call stack``` as well:
---
- The ```computer``` then ```executes``` ```factorial(1)```. Since ```1``` is the ```base case```, ```factorial(1)```
completes without the factorial ```method``` being called again
---
 - The next thing the ```computer```
does is ```peek``` at the ```top element``` of the ```call stack```, which currently is ```factorial(2)```
---
 - Since ```factorial(2)``` is the ```last``` item in the ```call stack```, that means that ```factorial(2)``` is the ```most recently called``` ```method``` and therefore the immediate ```method call``` that is to be completed.
---
- The ```computer``` looks at the ```call stack``` to see which ```method``` it needs to complete next, and since the ```call stack``` is currently ```factorial(3)``` it ```pops``` ```factorial(3)``` from the ```stack``` and completes the ```method```.
---

## ```Recursive Algorithm```
:heavy_check_mark: Below is a simple ```Ruby script``` that ```prints``` out the names of all ```subdirectories``` within a given ```directory``` using ```recursion```.

```ruby
def find_directories(directory)

    Dir.foreach(directory) do |filename|

        if File.directory?(”#{directory}/#{filename}”) &&
            filename != “.” && filename != “..”
            puts “#{directory}/#{filename}”

            # recursive step
            find_directories(”#{directory}/#{filename}”)
        end
    end
end
```

