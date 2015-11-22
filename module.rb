# 可把 module 想像成工具箱，本身並不是 class
# 不可 new，只能被 include 到其他 class 裡面使用
module Knowledge
  def math
    puts "I know math"
  end
end

class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "hello, my name is #{self.name}"
  end
end

class Engineer < Person
  include Knowledge
  def greet
    puts "I am an Engineer, my name is #{self.name}"
  end

end

bob = Engineer.new("Bob", 17)
bob.math
# => I know math


