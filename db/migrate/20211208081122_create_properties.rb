class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.string :label
      t.text :en
      t.text :fa

      t.timestamps
    end
  end
end
