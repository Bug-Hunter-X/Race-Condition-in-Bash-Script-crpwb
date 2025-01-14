# Race Condition in Bash Script
This repository demonstrates a race condition in a simple bash script.  Two processes write to separate files concurrently. The outcome depends on unpredictable scheduling behavior, leading to potential data corruption or inconsistent results.

## Bug Description
The script uses background processes (&) and `wait` to ensure both processes complete. However, the order in which the `echo` commands execute is not guaranteed, leading to a race condition.  The script may produce expected output most of the time, but occasionally produces unexpected output due to the race condition.

## Solution
The race condition is resolved by using process substitution and ensuring the commands execute in the correct order, using a lock mechanism, or improving the overall synchronization using `flock`.
