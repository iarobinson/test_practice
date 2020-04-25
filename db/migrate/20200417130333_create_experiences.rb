class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :pass
      t.string :grade
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
