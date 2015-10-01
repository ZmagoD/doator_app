class CreateColectionlocs < ActiveRecord::Migration
  def change
    create_table :colectionlocs do |t|
      t.references :organisation, index: true, foreign_key: true
      t.string :goods
      t.string :description
      t.timestamps null: false
    end
  end
end
