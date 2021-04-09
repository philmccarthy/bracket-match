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
class BracketMatch
  BRACKETS = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }

  def self.paired?(string)
    stack = []
    string.chars.each do |char|
      stack << char if BRACKETS.key?(char)
      return false if BRACKETS.key(char) && BRACKETS.key(char) != stack.pop
    end
    stack.empty?
  end
end

puts BracketMatch.paired?('{}')
puts BracketMatch.paired?('{(')
puts BracketMatch.paired?('{()}')
puts BracketMatch.paired?('{[)][]}')
puts BracketMatch.paired?(']')
puts BracketMatch.paired?('({[]}{[]})')
