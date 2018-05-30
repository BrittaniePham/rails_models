class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :phone_number
      t.text :address
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
