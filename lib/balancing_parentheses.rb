require_relative './stack'

# your code here

def balancing_parentheses(str)
    paran_stack = Stack.new
    extra_right = 0
    str.chars.each do |char| 
        if char == '('
            paran_stack.push('(')
        elsif char == ')'
            if paran_stack.size == 0
                extra_right += 1
            else
                paran_stack.pop
            end
        end
    end

    paran_stack.size + extra_right
end