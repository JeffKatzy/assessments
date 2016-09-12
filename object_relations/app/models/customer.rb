#assuming no use of ActiveRecord
#Customer belongs to Review
#Customer has many Restaurants through Reviews

class Customer
  attr_accessor :name

  @@customers = []
  @@counter = 0


  def intialize(name)
    @id = counter += 1
    @name = name
    @@customers << self
  end

  def self.find_by_id(id)
    # make a class method customers, and use it.
    @@customers.find do |customer|
      customer.id == id
    end
  end

  def self.find_by_name(name)
    @@customers.find do |customer|
      customer.name == name
    end
  end

  def add_review(description, restaurant)
    # create new restaurant by name
    # create new Review with Customer/Restaurant id's
    newReview = Review.new(self.id, Restaurant.new(restaurant).id)
  end
end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
