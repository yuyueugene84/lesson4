# class 可以想像成是物件的模板/藍圖，但是他本身也可以被定義一些 method

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # 定義 class 自己的 method
  def self.hello
    puts "hello, i am Person Class"
  end
end

# 呼叫方式
Person.hello
#=> hello, i am Person Class
