require 'pry'
class BankAccount

  attr_accessor :status
  attr_reader :name, :balance

  def initialize(name) 
    @name = name
    @balance = 1000
    @status = "open"
  end 
    
  def balance=(balance)
    @balance = balance
  end
  
  def deposit(deposit) 
    @balance += deposit
    
  end 
  
  def display_balance 
    "Your balance is $#{@balance}."
  end 
  
  def valid? 
    @status == "open" && @balance > 0 ? true : false
  end 
  
  def close_account 
    @status = "closed"
  end 
  
end
