require "pry"

class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end 
  
  def linked_receiver
     @linked_receiver = BankAccount.find_by_name(self.receiver)
     binding.pry
  end 
  
  def linked_sender
    @linked_sender = BankAccount.find_by_name(self.sender)
  end 
  
  def valid?
   # self.linked_sender.valid? && self.linked_receiver.valid?
  end 
  
  def execute_transaction 

  end 
  
end
