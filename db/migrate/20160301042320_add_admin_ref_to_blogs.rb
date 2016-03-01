class AddAdminRefToBlogs < ActiveRecord::Migration
  def change
    add_reference :blogs, :admin, index: true, foreign_key: true
  end
end
