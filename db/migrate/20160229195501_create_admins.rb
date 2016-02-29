class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :github
      t.string :twitter
      t.string :city
      t.string :state
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
