class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    "hello, my name is #{self.name}"
  end
end
# 如果我希望在改變 Engineer 的 greet
class Engineer < Person
  # override (覆寫) 原本 Person 的 greet
  def greet
    # super 會呼叫 parent class 裡面同樣名字的 method
    # 注意 super 只能在 method 裡面使用
    puts super + ", I know how to write Ruby"
  end
end

bob = Engineer.new("Bob", 17)
bob.greet
#=> hello, my name is Bob, I know how to write Ruby

