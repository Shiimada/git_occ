class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string      :name
      t.string      :name1
      t.string      :name2
      t.string      :name3
      t.string      :name4
      t.string      :name5
      t.text        :text
      t.integer     :price1
      t.integer     :price2
      t.integer     :price3
      t.integer     :price4
      t.integer     :price5
      t.integer     :price6
      t.text        :image
      t.timestamps null: true

    
    end
  end
end
