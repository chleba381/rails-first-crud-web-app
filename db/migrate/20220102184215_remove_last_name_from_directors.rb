class RemoveLastNameFromDirectors < ActiveRecord::Migration[7.0]
  def change
    remove_column :directors, :last_name, :string
  end
end
