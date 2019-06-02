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
