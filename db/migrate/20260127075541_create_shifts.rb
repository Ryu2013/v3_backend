class CreateShifts < ActiveRecord::Migration[7.2]
  def change
    create_table :shifts do |t|
      t.date :date
      t.time :starttime
      t.time :endtime
      t.references :shift_type, null: true, foreign_key: true
      t.references :name, null: true, foreign_key: true

      t.timestamps
    end
  end
end
