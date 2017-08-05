class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
    	t.integer :user_id
    	t.string :business_type
      t.timestamps
    end
  end
end
