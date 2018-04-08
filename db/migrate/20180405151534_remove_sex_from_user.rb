class RemoveSexFromUser < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :sex, :string, null: false, default: 'male'
  end
end
