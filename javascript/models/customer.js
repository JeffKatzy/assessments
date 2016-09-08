class Customer {
  constructor(name) {
    this.id = Store.customerCount++
    this.name = name

    //add Customer to Store upon initialization
    Store.customers.push(this)
    console.log(`New Customer - ${this.name}`)
  }

  findByName(name) {
    return Store.customers.find(
      (customer) => {
        return customer.name === name
    })
  }

  findById(id) {
    return Store.customers.find(
      (customer) => {
        return customer.id === id
    })
  }

  addReview(title, description, restaurantName) {
    //find or create restaurant using name and retieve ID
    const restaurantId =
      Restaurant.prototype.findByName(restaurantName)
      ? Restaurant.prototype.findByName(restaurantName).id
      : (new Restaurant(restaurantName).id)

    new Review(title, description, this.id, restaurantId)
  }

  all() {
    console.log(Store.customers)
  }

}
