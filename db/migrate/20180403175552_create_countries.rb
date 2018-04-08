class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :country_phone_code
      
      t.timestamps
    end
  end
end
