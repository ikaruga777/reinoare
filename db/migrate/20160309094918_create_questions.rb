class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id , null: false
      t.string :question01
      t.string :question02
      t.string :question03
      t.string :question04
      t.string :question05
      t.string :vote_cherf_organizer
      t.string :vote_organizer01
      t.string :vote_organizer02
      t.string :vote_organizer03
      t.string :vote_organizer04
      t.timestamps null: false
    end
  end
end
