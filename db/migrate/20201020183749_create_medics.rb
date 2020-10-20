class CreateMedics < ActiveRecord::Migration[6.0]
  def change
    create_table :medics do |t|
      t.string :ccg 
      t.string :group
      t.string :postcode
      t.string :practice_name
      t.string :address
      t.string :list_size
      t.string :brick
      t.string :telephone
      
      t.timestamps
    end
  end
end
