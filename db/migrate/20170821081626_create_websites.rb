class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.integer :template_id
      t.string :website_name
      t.string :category
      t.integer :user_id
      t.integer :used_template_id

      t.timestamps
    end
  end
end
