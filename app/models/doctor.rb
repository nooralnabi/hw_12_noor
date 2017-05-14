class Doctor < ActiveRecord::Base
      has_many :patients, dependent: :destroy
       validates :first_name , :presence => true      
       validates :last_name , :presence => true
       validates_uniqueness_of :license
       validates_format_of :phone,:with =>/\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/ ,:message => "- Phone numbers must be a number format."
       validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create ,:message =>"must be in @gmail.com"
end
