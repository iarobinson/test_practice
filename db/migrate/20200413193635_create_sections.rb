class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :description
      t.belongs_to :test

      t.timestamps
    end
    add_reference :questions, :section, foreign_key: true
  end
end
