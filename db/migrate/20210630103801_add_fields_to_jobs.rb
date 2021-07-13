class AddFieldsToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :post_pack_code, :string, unique: true 
    add_index :jobs, :post_pack_code
  end
end
