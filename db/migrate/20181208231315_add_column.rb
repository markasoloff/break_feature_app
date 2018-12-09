class AddColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :breaks, :status, :boolean, default: false
  end
end
