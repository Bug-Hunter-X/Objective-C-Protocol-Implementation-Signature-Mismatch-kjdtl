# Objective-C Protocol Implementation Signature Mismatch
This repository demonstrates a subtle bug in Objective-C related to protocol implementations. A slight difference in method signatures between a protocol declaration and its implementation can lead to runtime crashes or unexpected behavior. The compiler might not always detect these inconsistencies.

## Bug Description
The bug arises when the parameter type in a protocol method declaration doesn't exactly match the parameter type in the implementing class's method. A space in the parameter declaration, for example, can cause this issue to go unnoticed, leading to runtime failures.

## How to Reproduce
1. Clone this repository.
2. Compile and run the `bug.m` file.  Observe the error/unexpected behavior.
3. Review the corrected implementation in `bugSolution.m` to understand the solution.

## Solution
The solution lies in ensuring the exact match between the protocol method signature and its implementation in the class. Pay close attention to spacing and any inconsistencies in the parameter declarations.