# private 是只有在類別內部才可以存取
# 適用於有些時候，你希望一些 method 不會被程式的其他地方使用到(像是金流、身分證字號 etc.)
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
    #只能在 class 裡面被其他 instance method 呼叫，前面不能加 self
    puts "secretly, #{secret_method}"
  end

  private # 先寫 private 關鍵字

  def secret_method
  	"I am Iron Man!"
  end
end

bob = Person.new("bob", 17)
bob.identity
# secretly, I am Iron Man!
# private method 不可直接被物件呼叫
bob.secret_method
#=> private method `secret_method' called
#=> for #<Person:0x007ff182033498 @name="bob", @age=17> (NoMethodError)