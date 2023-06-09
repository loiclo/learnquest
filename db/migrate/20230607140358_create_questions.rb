class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :number
      t.integer :reward
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
