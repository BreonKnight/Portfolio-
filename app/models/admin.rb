class Admin < ActiveRecord::Base

  #bcrypt secure password
  has_secure_password

  #for paperclip usage
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  #admin has many blogs
  has_many :blogs

  #sign in confirming
  def self.confirm(params)
    @admin = Admin.find_by({email: params[:email]})
    @admin.try(:authenticate, params[:password])
  end
end
