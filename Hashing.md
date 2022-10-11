# ```Hashing```

```c
A = 1
B = 2
C = 3
D = 4
E = 5
// and so on ...
```
:heavy_check_mark: According to the above ```code```,
```DAB``` converts to ```412```, and ```BAD``` converts to ```214```.
This process of taking ```characters``` and converting them to 
```numbers``` is known as ```hashing```. 

:heavy_check_mark: The ```code``` that is used to 
convert those ```letters``` into particular ```numbers``` 
is called a ```hash function```.

:heavy_check_mark: Another example of a ```hash function```
is to ```return``` the product of all the ```letters```’ 
corresponding ```numbers.``` This would convert the word BAD into the ```number``` ```8```

The ```computer``` takes the following ```steps``` for ```lookup```:
- 1: First, ```BAD``` converts to ```214```.
- 2: We then take the product of these digits:
## ```Avoiding Collisions```
_**N.B**_ with this ```hash function```, ```DAB``` will also convert into ```8``` just as ```BAD```
will. Trying to ```add``` ```data``` to a ```cell``` that is already filled is known as a ```collision```

:heavy_check_mark: One classic approach for handling ```collisions``` is known as ```separate chaining```.

:heavy_check_mark: When a ```collision``` occurs, instead of placing a single ```value``` in the ```cell```, it places in it a ```reference``` to an ```array```.

The ```computer``` now takes the following ```steps``` for ```lookup```:
- 1. It ```hashes``` the ```key```. ```DAB = 4 * 1 * 2 = 8```.
- 2. It looks up ```cell``` 8. The ```computer``` takes note that ```cell``` 8 contains an ```array``` of ```arrays``` rather than a single ```value```.
- 3. It ```searches``` through the ```array``` linearly, looking at ```index``` 0 of each ```subarray``` until it finds the word we’re ```looking up``` (“dab”). It then ```returns``` the ```value``` at ```index``` 1 of the correct ```subarray```

_**N.B**_

:heavy_check_mark: A good ```hash table``` strikes a balance of avoiding ```collisions``` while not consuming lots of ```memory```.

:heavy_check_mark: To accomplish this, ```computer scientists``` have ```developed``` the following rule of thumb: for every seven ```data elements``` stored in a ```hash table```, it should have ten ```cells```. 

:heavy_check_mark: So, if you’re planning on ```storing``` fourteen ```elements```, you’d want to have twenty available ```cells```, and so on and so forth.
This ratio of ```data``` to ```cells``` is called the ```load factor```. Using this terminology, we’d say that the ideal ```load factor``` is ```0.7 (7 elements / 10 cells)```
