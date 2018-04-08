class AddSexIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :sex, foreign_key: true
  end
end
