# protected 是介於 public 和 private 之間
# 從 class 外面來看，protected 就像 private，不能被物件直接呼叫
# 從內部看 protected method 可被其他 instance method 呼叫，就像一般的 public method
class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "hello, my name is #{self.name}"
  end

  def identity
    #在 class 裡面可被其他 instance method 呼叫，就像一般的 public method
    puts "secretly, #{self.protected_method}"
  end

  protected # 先寫 protected 關鍵字

  def protected_method
    "I am Spider Man!"
  end
end

bob = Person.new("bob", 17)
bob.identity
# secretly, I am Spider Man!
#bob.protected_method
# => protected_class.rb:31:in `<main>': protected method `protected_method' called for
# => #<Person:0x007fb9f3033428 @name="bob", @age=17> (NoMethodError)