function sort() {
    /*
       for each nums[i],collect and accumulate each number 
       that is the current minimum of each passthrough. until 
       there are no more current minimums.
   */

   let notSorted = true;
   let indexToDelete = -1;

   while (notSorted) {
       
       this.min = Infinity;
       notSorted = false;

       for (let i = 0; i<this.nums.length; i++) {

           const num = this.nums[i]; 

           if (num == null)
           continue;
            
           if (num < this.min) {
               indexToDelete = i;
               this.min = num;
               notSorted = true;
           }
       }

       this.nums[indexToDelete] = null;     
       this.nums = this.nums.filter(ele => ele != null);

       if (notSorted === false)
       break;
       
       this.results.push(this.min);
   }

   return this.results;
}