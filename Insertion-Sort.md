
# ```Insertion Sort```

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