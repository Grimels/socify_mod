class AddCountryToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :country, :users, foreign_key: true
  end
end
