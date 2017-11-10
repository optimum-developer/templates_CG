class CreateTemplateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :template_elements do |t|
      t.string :element_id
      t.text :element_value
      t.integer :used_template_id
      t.integer :website_id
      t.integer :user_id
      t.timestamps
    end
  end
end
