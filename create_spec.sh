#!/bin/bash
echo "Specify File Name:"
read filename
echo "Spec Folders and Files Created!"
mkdir "lib"
touch "lib/$filename.rb"
mkdir "spec"
mkdir "spec/lib"
specname="_spec.rb"
touch "spec/lib/$filename$specname"
