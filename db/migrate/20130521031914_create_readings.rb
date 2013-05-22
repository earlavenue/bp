class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.time :date
      t.integer :systolic
      t.integer :diastolic
    end
  end
end
