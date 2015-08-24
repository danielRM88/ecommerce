class ChangeDescToTextInProducts < ActiveRecord::Migration
  def change
    remove_column :products, :description
    add_column :products, :description, :text
  end
end
