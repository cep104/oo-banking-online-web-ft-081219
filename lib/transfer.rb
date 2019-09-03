class Transfer
  attr_accessor :reciever, :amount, :name
  
 def initilize(name,reciever,amount)
   @reciever = reciever 
   @amount = amount
   @name = name
 end
end
