# 如果說 instance variable 是綁定物件的資料，那 class variable
# 就是綁定 class 本身的資料
class Person  
  attr_accessor :name, :age

  # 宣告時前面加兩個 @@
  @@number_of_people = 0

  def initialize(name, age)
    @name = name
    @age = age
    # 每創一個新的 object，就會被加一次
    @@number_of_people += 1
  end

  def self.hello
    puts "hello, i am Person Class"
  end

  # 回傳 @@number_of_people
  def self.info
    @@number_of_people
  end
end

# 呼叫方式
puts Person.info
bob = Person.new("Bob", 17)
puts Person.info
# => 1
sam = Person.new("Sam", 32)
puts Person.info
# => 2