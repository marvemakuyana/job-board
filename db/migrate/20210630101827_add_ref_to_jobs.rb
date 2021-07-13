class AddRefToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :ref, :string, unique: true
    add_index :jobs, :ref
  end
end
