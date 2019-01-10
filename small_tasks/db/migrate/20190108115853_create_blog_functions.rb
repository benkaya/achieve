class CreateBlogFunctions < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_functions do |t|
      t.string :name
      t.text :email
      t.text :content
      
      t.timestamps
    end
  end
end
