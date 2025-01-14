#!/bin/bash

# Create two files.
touch file1.txt
touch file2.txt

# Use process substitution to ensure ordered execution
process1=$(echo "Process 1 writing to file1")
process2=$(echo "Process 2 writing to file2")

# Write to files in a controlled sequence
echo "$process1" > file1.txt
echo "$process2" > file2.txt

# Check the contents of the files.
cat file1.txt
cat file2.txt