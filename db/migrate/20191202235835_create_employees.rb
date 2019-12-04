class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :emp_id
      t.text :first_name
      t.text :last_name
      t.date :date_of_birth
      t.text :salary
      t.text :email
      t.text :phone
      t.text :email

      t.timestamps
    end
  end
end
