class Transfer
  attr_accessor :receiver, :amount, :sender, :status, :withdrawl, :deposit
  
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
 if @status == "complete"
      @sender.deposit( @amount ) 
      @receiver.deposit( @amount * -1)
      @status = "reversed"
    # else 
    #   status = "rejected"

 end
 end
end
