class AddPreferenceToClient < ActiveRecord::Migration
  def change
    add_column :clients, :preference, :string
  end
end
