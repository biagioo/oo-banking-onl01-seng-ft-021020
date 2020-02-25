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
    transfer = send && receive

    if valid? 
      transfer
      @status = "complete"
    elsif !valid
    !transfer
    end
    
    #binding.pry 
  end 
  
end
