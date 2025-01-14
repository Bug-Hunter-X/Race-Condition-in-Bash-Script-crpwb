#!/bin/bash

# This script demonstrates a race condition.

# Create two files.
touch file1.txt
touch file2.txt

# Start two processes simultaneously.
(echo "Process 1 writing to file1" > file1.txt &)
(echo "Process 2 writing to file2" > file2.txt &)

# Wait for both processes to finish. This part is susceptible to race conditions.
wait

# Check the contents of the files.
cat file1.txt
cat file2.txt