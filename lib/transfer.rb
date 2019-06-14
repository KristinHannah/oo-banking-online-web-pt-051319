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
  
  
      it "calls on the sender and receiver's #valid? methods" do
      transfer_class = File.read("lib/transfer.rb")

      expect(amanda).to receive(:valid?).and_return(true)
      expect(avi).to receive(:valid?).and_return(true)
  
  
  def linked_receiver
     @linked_receiver = BankAccount.find_by_name(self.receiver)
  end 
  
  def linked_sender
    @linked_sender = BankAccount.find_by_name(self.sender)
  end 
  
  def valid?
   linked_sender.valid? && linked_receiver.valid?
  end 
  
end
