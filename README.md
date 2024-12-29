# Dart: Handling Potential Errors in JSON Parsing

This repository demonstrates a common error in Dart when dealing with JSON parsing and list/map access and provides a robust solution. The `bug.dart` file contains code that attempts to access JSON elements without properly checking for their existence. This can lead to runtime exceptions. The improved version in `bugSolution.dart` uses proper error handling to prevent these exceptions.  The solution prioritizes using null-aware operators and more controlled JSON access methods to make the code safer.

## Running the Code

To run the code, you'll need to have Dart installed on your system.  Clone this repository and then run the Dart files using the Dart command line.