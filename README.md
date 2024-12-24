# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart: failing to handle exceptions when decoding JSON responses from network requests.  The `bug.dart` file shows the flawed code, while `bugSolution.dart` provides a corrected version.

## Problem

The original code uses `jsonDecode` without proper error handling. If the server returns malformed JSON, a `FormatException` will be thrown, potentially crashing the application. 

## Solution

The corrected code includes a `try-catch` block specifically designed to handle `FormatException` and other potential errors. The solution provides robust error handling, improving the application's reliability.