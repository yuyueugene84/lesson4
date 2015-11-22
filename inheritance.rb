# 我們希望在建立新的 class 時，新的 class 也包含了舊的 class 的方法和特性
# 這時就可以使用 inheritance(繼承)
# 讓我不用重新寫很多東西
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

# 使用 < 來代表繼承
class Engineer < Person

end

class Salesman < Person

end

bob = Engineer.new("Bob", 17)
sam = Salesman.new("Sam", 32)

bob.greet
sam.greet

# => hello, my name is Bob
# => hello, my name is Sam
# Engineer 和 Salesman 繼承了 Person 的 greet 方法
