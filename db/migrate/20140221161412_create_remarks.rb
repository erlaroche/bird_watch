class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :commenter
      t.text :body
      t.references :clip, index: true

      t.timestamps
    end
  end
end
