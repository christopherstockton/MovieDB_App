class CreateSnacks < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.string :snack_name
      t.string :snack_brand
      t.text :snack_description
      t.string :snack_cost

      t.timestamps
    end
  end
end
