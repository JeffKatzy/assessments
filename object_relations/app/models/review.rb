class Review
  attr_accessor :customer_id, :restaurant_id

  @@reviews = []
  @@counter = 0

  def initialize(customer_id, restaurant_id)
    @id = @@counter += 1
    @customer_id = customer_id
    @restaurant_id = restaurant_id
    self.all << self
  end

  def self.all
    @@reviews
  end

  def customer
    #return customer based off customer_id
    Customer.find_by_id(self.customer_id)
  end

  def restaurant
    Restaurant.find_by_id(self.restaurant_id)
  end
end
