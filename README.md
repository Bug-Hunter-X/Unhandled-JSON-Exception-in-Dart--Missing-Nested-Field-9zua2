# Unhandled JSON Exception in Dart: Missing Nested Field

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a nested field that may not exist.  The code in `bug.dart` shows the error, while `bugSolution.dart` provides a corrected version using null-aware operators and checks for null values.

## Problem

The original code directly accesses a nested JSON field without checking if it exists.  If the `nested` or `value` fields are missing, the application will throw a runtime exception.

## Solution

The improved code uses the `?.` operator for null-safe access to the nested field. It also includes explicit null checks to prevent exceptions and handle cases where the field is missing gracefully.
