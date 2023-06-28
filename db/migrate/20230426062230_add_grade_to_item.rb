class AddGradeToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :grade, :string
  end
end
