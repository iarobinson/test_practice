class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :answer
      t.string :description
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4
      t.string :option_5
      t.string :option_6
      t.timestamps
    end
  end
end
