class ChangeUserColumns < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.remove :email 
      t.rename :name, :username 
    end  
    # remove_column :name, :email 
    # add_column :username, :string, null: false
  end
end
