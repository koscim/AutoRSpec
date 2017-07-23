#!/bin/bash
gem install rspec
bundle init
echo "gem 'pry'" >> "Gemfile"
echo "gem 'rspec'" >> "Gemfile"
bundle
rspec --init
echo "--color" >> ".rspec"
echo "Specify File Name:"
read filename
echo "Spec Folders and Files Created!"
mkdir "lib"
touch "lib/$filename.rb"
# mkdir "spec"
mkdir "spec/lib"
specname="_spec.rb"
touch "spec/lib/$filename$specname"
echo "require 'spec_helper'" >> "spec/lib/$filename$specname"
echo "require_relative '../../lib/$filename.rb'" >> "spec/lib/$filename$specname"
