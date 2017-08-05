class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.integer :business_id
      t.string :template_id
      t.timestamps
    end
  end
end