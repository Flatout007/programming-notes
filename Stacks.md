## ```Stacks```
:heavy_check_mark: A ```stack``` ```stores``` ```data``` in the same way that ```arrays``` do—it’s simply a ```list``` of
```elements```. The one catch is that ```stacks``` have the following three constraints:

- Data can only be ```inserted``` at the ```end``` of a ```stack```.
- Data can only be ```read``` from the ```end``` of a ```stack```.
- Data can only be ```removed``` from the ```end``` of a ```stack``` 

## ```Stack algorithm```
:heavy_check_mark: ```Stacks``` are a great tool to handle ```temporary data``` as part of various ```algorithms```.

:heavy_check_mark: ```temporary data``` is ```data``` that is not needed after being ```read```, used, or completed

:heavy_check_mark: A common ```algorithm``` would be the opening and closing of ```brackets``` logic when ```implementing``` a ```linter```. 

_**N.B**_
Lets consider all ```cases``` where an ```linting``` ```error``` might occur:

##### ```Error Type #1``` 
The first is when there is an ```opening brace``` that doesn’t have a corresponding
```closing brace```, such as this:
### ```(var x = 2;```

---

##### ```Error Type #2```
The second is when there is a ```closing brace``` that was never preceded by a
corresponding ```opening brace```:
### ```var x = 2;)```

---

#####  ```Error Type #3```
when a ```closing brace``` is not the same ```type``` of ```brace``` as the immediately preceding ```opening brace```, such as:
### ```(var x = [1, 2, 3)];```
---

**NOTE**: ```steps``` for ```implementing``` ```linting``` ```algorithm```

We prepare an ```empty stack```, and then we ```read``` each ```character``` from left to right,
following these rules:
1. If we find any ```character``` that isn’t a ```type``` of ```brace``` (parenthesis, square
bracket, or curly brace), we ignore it and move on.
---
2. If we find an ```opening brace```, we ```push``` it onto the ```stack```. Having it on the
```stack``` means we’re waiting to ```close``` that particular ```brace```.
---
3. If we find a ```closing brace```, we inspect the ```top element``` in the ```stack```. We
then analyze:

    - If ```Error Type #2```, If ```Error Type #3```, or ```Error Type #1```
     then the line of ```code``` is ```invalid``` so ```return``` any ```errors```
    - If the ```closing character``` is a corresponding match for the ```element``` at the ```top``` of the ```stack```, that means we’ve successfully closed that ```opening brace```. 

    - We pop the top element from the stack, since we no
    longer need to keep track of it.
---
4. If we make it to the end of the line and there’s still something left on the ```stack```, that means there’s an ```opening brace``` without a corresponding ```closing brace```, which is ```Error Type #1```

**_N.B_** below is an ```implementation``` of the ```bracket``` ```logic``` for a ```linter``` in ```ruby```

```rb
class Linter

    attr_reader :error

    def initialize
        # We use a simple array to serve as our stack:
        @stack = []
    end

    def lint(text)

        # We start a loop which reads each character in our text:
        text.each_char.with_index do |char, index|
            if opening_brace?(char)
                # If the character is an opening brace, we push it onto the stack:
                @stack.push(char)
            elsif closing_brace?(char)
                if closes_most_recent_opening_brace?(char)
                    # If the character closes the most recent opening brace,
                    # we pop the opening brace from our stack:
                    @stack.pop
                else 
                    # if the character does NOT close the most recent opening brace
                    @error = “Incorrect closing brace: #{char} at index #{index}”
                    return
                end
            end
        end

        if @stack.any?
            # If we get to the end of line, and the stack isn’t empty, that means
            # we have an opening brace without a corresponding closing brace:
            @error = “#{@stack.last} does not have a closing brace”
        end
    end

    
    private; 
    def opening_brace?(char)
        return [“(“, “[“, “{“].include?(char)
    end

    def closing_brace?(char)
        return [“)”, “]”, “}”].include?(char)
    end

    def opening_brace_of(char)
        return {“)” => “(“, “]” => “[“, “}” => “{“}[char]
    end

    def most_recent_opening_brace
        return @stack.last
    end

    def closes_most_recent_opening_brace?(char)
        return opening_brace_of(char) == most_recent_opening_brace
    end
end
```