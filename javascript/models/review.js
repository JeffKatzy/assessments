class Review {
  constructor(title, description, customerId = null, restaurantId = null) {
    this.id = Store.reviewCount++
    this.title = title
    this.description  = description
    this.customer_id = customerId
    this.restaurant_id = restaurantId

    //add Customer to Store upon initialization
    Store.reviews.push(this)
    console.log(`New Review - ${this.title} ${this.description}`)
  }

  customer() {
    console.log(Customer.prototype.findById(this.customer_id))
  }

  restaurant() {
    console.log(Restaurant.prototype.findById(this.restaurant_id))
  }
}
