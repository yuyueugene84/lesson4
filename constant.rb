# constant 就是有些時候會遇上一些在程式裡不應改變的變數
# 像是圓周率、稅率、法定成年的年紀 etc.

class Person  
  # 宣告 constant，全部大寫
  LEGAL_AGE_TO_DRIVE = 18
  PI =  3.1469680
  TAX_RATE = 0.05

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # 看這個人是否已到可以考駕照的年齡
  def can_drive?
    if self.age >= LEGAL_AGE_TO_DRIVE 
      puts "yes #{self.name} can drive"
    else 
      puts "no #{self.name} can't drive"
    end
  end

end

bob = Person.new("Bob", 17)
bob.can_drive?
#=> yes Bob can drive
