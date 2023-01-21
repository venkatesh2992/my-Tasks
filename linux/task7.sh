#!/bin/bash

echo "Please enter your username (must be uppercase and without spaces):"
read username

if [ [ $username =~ [A-Z]+  ] ] && [ [ ! $username =~ [ ]  ] ]
then
  echo "Username accepted"
else
  echo "Invalid username. Please enter a valid username (must be uppercase and without spaces)."
