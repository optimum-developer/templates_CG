class CreateUsedTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :used_templates do |t|
      t.integer :template_id
      t.integer :user_id
      t.integer :website_id


      t.timestamps
    end
  end
end
