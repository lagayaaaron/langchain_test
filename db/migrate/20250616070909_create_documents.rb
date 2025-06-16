class CreateDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :documents do |t|
      t.string :issuance_no
      t.datetime :doc_date
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
