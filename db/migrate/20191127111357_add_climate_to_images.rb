class AddClimateToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :climate, :string
  end
end
