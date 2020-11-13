class Customer
  attr_accessor :name, :wallet, :basket

  def initialize(name, wallet = 25, basket = {})
    @name = name
    @wallet = wallet
    @basket = basket
  end



 
end