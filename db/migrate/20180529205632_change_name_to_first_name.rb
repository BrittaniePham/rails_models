class ChangeNameToFirstName < ActiveRecord::Migration[5.2]
  def change
    rename_column :people, :name, :first_name
  end
end
