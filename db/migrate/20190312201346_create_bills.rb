class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.text :name
      t.text :phone_number
      t.text :website
      t.text :amount

      t.timestamps
    end
  end
end
