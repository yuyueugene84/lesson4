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

# 如果我希望在改變 Engineer 的 greet
class Engineer < Person
  # override (覆寫) 原本 Person 的 greet
  def greet
    puts "I am an Engineer, my name is #{self.name}"
  end
end

# 創立一個叫 German 的子類別
class German < Person
  # override (覆寫) 原本 Person 的 greet
  def greet
    puts "Hallo, mein name ist #{self.name}"
  end
end

bob = Engineer.new("Bob", 17)
martin = German.new("Martin", 20)

bob.greet
martin.greet

#=> I am an Engineer, my name is Bob
#=> Hallo, mein name ist Martin
