class BankAccount 
  attr_accessor :balance, :status
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = "open"
    @@all << self 
  end 
  
  def deposit(money)
    @balance += money 
  end 
  
  def display_balance
    "Your balance is $#{@balance}." 
  end 
  
  def valid?
    self.status == "open" && 0 < self.balance
  end 
  
  def close_account 
    self.status = "closed"
  end 
  
  def self.find_by_name(name)
    @@all.find {|p| p.name == name}
  end 
end
