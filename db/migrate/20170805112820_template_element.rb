class TemplateElement < ActiveRecord::Migration[5.1]
  def change
  	create_table :templateelements do |t|
  	  t.string :element_id
      t.text :element_value
      t.timestamps
  	end
  end
end