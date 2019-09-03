class Transfer
  attr_accessor :receiver, :amount, :sender, :status
  
 def initialize(sender, receiver, amount)
   @receiver = receiver
   @amount = amount
   @sender = sender
   @status = "pending"
 end
 
 def valid?
  sender.valid? && receiver.valid?
 end
 
 def execute_transaction
   @sender.balance -= @amount 
   @receiver.balance += @amount
    @status = "complete"
  if valid? && @status == "complete"
    @amount = 0
   else
        @status = "rejected"
       "Transaction rejected. Please check your account balance."
   end
 end
 
 def reverse_transfer 
      @sender.balance += @amount 
      @receiver.balance -= @amount
   if receiver.balance < amount && valid? 
      status = "reversed"
    else 
      status = "rejected"
      "Transaction rejected. Please check your account balance." 
    end
 end
end
