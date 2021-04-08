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

def bracket_match(brackets)
  frequency_hash =  Hash.new { |hash, key| hash[key] = 0 }
  brackets.chars.each do |bracket|
    frequency_hash[bracket] += 1
  end
end

puts bracket_match('{(')
puts bracket_match('{()}')
puts bracket_match('{[)][]}')
puts bracket_match(']')
puts bracket_match('({[]}{[]})')
