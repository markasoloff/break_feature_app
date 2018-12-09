class CreateBreaks < ActiveRecord::Migration[5.2]
  def change
    create_table :breaks do |t|
      t.boolean :status
      t.integer :duration

      t.timestamps
    end
  end
end
