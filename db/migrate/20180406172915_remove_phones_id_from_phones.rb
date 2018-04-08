class RemovePhonesIdFromPhones < ActiveRecord::Migration[5.0]
  def change
  	remove_foreign_key :phones, :phones
  	remove_reference :phones, :phones, index: true
  end
end
