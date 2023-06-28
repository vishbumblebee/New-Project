class AddAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :employee_id, :string
    add_column :users, :role, :string
    add_column :users, :mobile_no, :string
    add_column :users, :active, :string
  end
end
