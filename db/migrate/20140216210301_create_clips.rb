class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.text :text
      
      t.timestamps
    end
  end
end
