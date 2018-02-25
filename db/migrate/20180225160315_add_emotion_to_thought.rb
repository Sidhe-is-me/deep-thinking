class AddEmotionToThought < ActiveRecord::Migration[5.1]
  def change
    add_reference :thoughts, :emotion, foreign_key: true
  end
end
