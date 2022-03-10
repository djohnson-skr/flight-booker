class AddLocationToAirport < ActiveRecord::Migration[6.1]
  def change
    add_column :airports, :location, :string
  end
end
