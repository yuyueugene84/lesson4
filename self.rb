# 現在我們知道用 attr_accessor，Ruby 會自動把 getter 
# 和 setter method 產生出來
class Person
  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{name}"
  end
  # 但假設說我需要在 class 裡面其他的 instance method 裡
  # 呼叫 getter 和 setter method
  def change_info(n, a)
    # 希望能像在使用 setter method 一樣， bob.name = "Boob"
    name = n
    age = a
  end

end

bob = Person.new("bob", 17)
# 用 change info 改變 bob 的 name 和 age
bob.change_info("Bob", 30)

puts bob.name
puts bob.age
# => bob
# => 17
# 但是 bob 的資料卻沒變，為什麼？ 
# ruby 以為我們在 change_info 裡的 name 和 age 是指變數而不是 getter methods

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{self.name}"
  end
  # 為了確保 ruby 知道我們是要使用 Person 的 getter 和 setter method
  # 需要 self 這個關鍵字
  def change_info(n, a)
    self.name = n
    self.age = a
  end

  def print_info(name, age)
    self.change_info(name, age)
    puts self.name 
    puts self.age
  end
end

bob = Person.new("bob", 17)
bob.change_info("Bob", 30)

puts bob.name
puts bob.age
# => Bob
# => 30

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{self.name}"
  end

  def change_info(n, a)
    self.name = n
    self.age = a
  end

  def print_info(name, age)
    # self 不光是指 getter 或 setter method，他也可用於任何
    # 這個 Class 的 instance method
    self.change_info(name, age)
    puts self.name 
    puts self.age
  end
end

bob = Person.new("bob", 17)
bob.print_info("BOB", 25)
# => BOB
# => 25
