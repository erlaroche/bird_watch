class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.string :youtube_id
      t.text :text

      t.timestamps
    end
  end
end
