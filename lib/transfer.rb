require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :amount
  attr_reader :status
  
  def initialize(sender, receiver, amount) 
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid? 
    @sender.valid? && @receiver.valid? ? true : false
  end 
  
  def execute_transaction 
    send = @sender.balance -= amount
    receive = @receiver.balance += amount
    transaction = send receive

    if valid? 
      transaction
      @status = "complete"
    #elsif 
    end
    
    #binding.pry 
  end 
  
end
