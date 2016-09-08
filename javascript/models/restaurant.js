class Restaurant {
  constructor(name) {
    this.id = Store.restaurantCount++
    this.name = name
    Store.restaurants.push(this) //add Customer to Store upon initialization
    console.log(`New Restaurant - ${this.name} ${this.location}`)
  }

  findByName(name) {
    return Store.restaurants.find(
      (restaurant) => {
        return restaurant.name === name
    })
  }

  findById(id) {
    return Store.restaurants.find(
      (restaurant) => {
        return restaurant.id === id
    })
  }

  customers(){
    Store.reviews.map(
      (review) => {
        this.id === review.restaurant_id
        ? console.log(Customer.prototype.findById(review.customer_id).name)
        : ''
    })
  }

  reviews(){
    Store.reviews.map(
      (review) => {
        this.id === review.restaurant_id
        ? console.log(review)
        : ''
    })
  }
}
