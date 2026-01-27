class CreateNames < ActiveRecord::Migration[7.2]
  def change
    create_table :names do |t|
      t.string :name

      t.timestamps
    end
  end
end
