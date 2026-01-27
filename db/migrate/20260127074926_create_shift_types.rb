class CreateShiftTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :shift_types do |t|
      t.string :shift_type

      t.timestamps
    end
  end
end
