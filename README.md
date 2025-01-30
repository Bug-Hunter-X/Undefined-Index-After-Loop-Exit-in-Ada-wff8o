# Ada Undefined Index After Loop Exit

This repository demonstrates a common error in Ada programming: accessing an array index after prematurely exiting a loop using `exit`.  The problem arises because the loop index variable is not guaranteed to have a defined value once the `exit` statement is executed.

## The Bug
The `bug.ada` file contains a procedure `Example` that iterates through an array. If the value 5 is found, the loop terminates using `exit`. The code then attempts to access and print the array element at the index `I` which can cause an error since `I`'s value is undefined after the `exit`. 

## The Solution
The solution, provided in `bugSolution.ada`, corrects this by declaring a variable to hold the last valid index before the exit.