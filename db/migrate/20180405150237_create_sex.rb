class CreateSex < ActiveRecord::Migration[5.0]
  def change
    create_table :sexes do |t|
      t.string :sex
    end
  end
end
