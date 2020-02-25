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
    transaction =  
    if valid? 
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    #elsif 
    end
    
    #binding.pry 
  end 
  
end
