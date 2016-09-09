# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table

customers
restaurants
owners
reviews

owners have many restaurants
owners have many

restaurants belong to owners
restaurants have many reviews
restaurants have many customers through reviews

review belongs to a restaurant
review belongs to a customer

customers have many reviews
customers have many restaurants through reviews

Reviews is the joins table between Customers and restaurants

To me... Owners are irrelevant when it comes to reviews & customers but
we can easily connect Owners to both reviews and customers through the restaurants that they owners.
It all depends on what we want in the end-game.
----------

Owners
id |

Restaurants
id | owner_id | name

Customers
id | name

Reviews
id | restaurant_id | customer_id
