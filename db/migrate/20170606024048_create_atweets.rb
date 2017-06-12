class CreateAtweets < ActiveRecord::Migration
  def change
    create_table :atweets do |t|
      t.text :content
      
      t.timestamps null: false
    end
  end
end
