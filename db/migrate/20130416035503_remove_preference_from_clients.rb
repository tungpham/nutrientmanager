class RemovePreferenceFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :preference
  end

  def down
    add_column :clients, :preference, :string
  end
end
