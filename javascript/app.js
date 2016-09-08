const Store = {
  customers: [],
  customerCount: 100,
  restaurants: [],
  restaurantCount: 200,
  reviews: [],
  reviewCount: 300
}

/*

_NOTES
  i built this out assuming there is no interface with forms.
  when returning objects/data, i use console log but this can
  very easily be modified to return data to views.
  i also neglected to use controllers for the sake of simplicity.

_DOMAIN MODELING
  customers have many reviews
  restaurants have many reviews
  restaurants have many customers through reviews
  customers have many restaurants through reviews

_SCHEMA
  customers
  id | name

  restaurants
  id | name

  reviews
  id | customer_id | restaurant_id

*/
