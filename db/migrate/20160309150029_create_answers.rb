class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id , null:false
      t.string :question01
      t.string :question02
      t.string :question03
      t.string :question04
      t.string :question05
      t.string :chief_organizer
      t.string :organizer01
      t.string :organizer02
      t.string :organizer03
      t.string :organizer04

      t.timestamps null: false
    end
  end
end
