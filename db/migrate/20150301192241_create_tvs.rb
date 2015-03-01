class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :brand
      t.integer :size

      t.timestamps null: false
    end
  end
end
