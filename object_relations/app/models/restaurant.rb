class Restaurant
  attr_accessor :name

  @@restaurants = []
  @@counter = 0

  def initialize(name)
    @id = counter += 1
    @name = name
    @@restaurants << self
  end

  #find all entries on Reviews table with self's id
  #grab all corresponding customer id's
  #return list of all customer's
  def customers
    Review.all.map do |review|
      Customer.find_by_id(review.customer_id) if self.id == review.restaurant_id
    end
  end

  def reviews
    Review.all.find { |review| self.id == review.restaurant_id }
  end

  def self.find_by_id(id)
    @@restaurants.find do |restaurant|
      restaurant.id == id
    end
  end

  def self.find_by_name(name)
    @@restaurants.find do |restaurant|
      restaurant.name == name
    end
  end
end
