class CreateKnowledgebases < ActiveRecord::Migration
  def change
    create_table :knowledgebases do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
