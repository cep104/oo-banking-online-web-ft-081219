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
 
# def execute_transaction
#   @sender.balance -= @amount 
#   @receiver.balance += @amount
#     @status = "complete"
#   if @status = "complete"
#     @amount = 0
#   end
#   if @sender.balance < @amount 
#     @status = "reject"
#     "Transaction rejected. Please check your account balance."
#   end
# end
# end
def execute_transaction
withdrawal = @sender.balance -= @amount 
deposit = @receiver.balance += @amount
if valid? && sender.balance > amount && self.status == "pending"
      sender.withdrawal(self.amount)
      receiver.deposit(self.amount)
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end