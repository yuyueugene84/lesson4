# method 有三種不同的存取限制
# public 就是所有的人都可以直接存取

class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
  # greet 就是 public method
  def greet
    puts "hello, my name is #{self.name}"
  end
end

#可以在程式的任何地方被使用