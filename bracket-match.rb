# Given a set of brackets, `[, {, (`, create a function that determines if the brackets are well-formed (match) or not - even with bracket nesting. For example:

#   ```javascript
#   bracket('{}');
  
#   // => true
#   ```
  
#   ```javascript
#   bracket('{(');
  
#   // => false
#   ```
  
#   ```javascript
#   bracket('{()}');
  
#   // => true
#   ```
  
#   ```javascript
#   bracket('{[)][]}');
  
#   // => false
#   ```
  
#   ```javascript
#   bracket(']');
  
#   // => false
#   ```
  
#   ```javascript
#   bracket('({[]}{[]})');
  
#   // => true
#   ```
