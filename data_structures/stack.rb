# stack of healthy pancakes

class Pancake
  def initialize(description)
    @description = description
  end
end

pancakes = []
pancakes.push(Pancake.new('Chocolate vanilla'))
pancakes.push(Pancake.new('Banana cardamom'))
pancakes.push(Pancake.new('Pumpkin nutmeg'))

pancakes.pop # returns #<Pancake:0x007fd4ba811168 @description="Pumpkin nutmeg"> 

# calculator implemented with stacks

class Calculator
  POSSIBLE_OPERATORS = %w(+ - * / sqrt).freeze

  # @param[String] mathematical expression to evaluate
  def initialize(expression)
    @expression = expression
    @operands = []
    @operators = []
  end

  def evaluate_expression
    @expression.split(' ').each do |c|
      next if c == '('
      if POSSIBLE_OPERATORS.include?(c)
        @operators.push(c)
      elsif c == ')'
        calculate_sub_result
      else
        @operands.push(c)
      end
    end

    while @operands.length > 1 { calculate_sub_result }

    @operands.first
  end

  def calculate_sub_result
    operator = @operators.pop
    right_val = @operands.pop.to_i
    left_val = @operands.pop.to_i unless operator == 'sqrt'
    sub_result = case operator
      when '+' then left_val + right_val
      when '-' then left_val - right_val
      when '/' then left_val / right_val
      when '*' then left_val * right_val
      when 'sqrt' then sqrt(right_val)
      end
    @operands.push(sub_result)    
  end
end

c = Calculator.new("3 + ( 5 * 2 ) - 70 / ( 8 + 2 )")
puts c.evaluate_expression