class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def owner
    sql = <<-SQL
    SELECT * FROM owners WHERE owners.id = ?
    SQL
    self.class.db.execute(sql, self.owners_id)
  end

  def customers
    sql = <<-SQL
      SELECT * FROM customers
      INNER JOIN reviews ON reviews.customer_id = customer.id
      WHERE reviews.restaurant_id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end
end
