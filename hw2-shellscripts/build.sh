#!/bin/sh

g++ hello.cpp -o hello
./hello > output.txt
file="/home/wilburt/Desktop/output.txt"
name=$(cat "$file")
valid="Hello world!"

if [ "$name" = "$valid" ]; then
	echo "All tests pass."
else
	echo "Test failed. Expected output Hello world!, got output $name"
fi
