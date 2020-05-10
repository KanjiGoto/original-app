class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.text :goal
      t.text :reason
      t.text :future

      t.timestamps
    end
  end
end
