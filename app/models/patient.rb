class Patient < ActiveRecord::Base
    
      belongs_to :doctor
    
        
    validates :last_name, :presence => true
    validates_uniqueness_of :first_name , scope: [:first_name ,:last_name,:doctor_id] , message: "or last name or doctor be unique" 
    validates_format_of :phone,:with =>/\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/ ,:message => "- Phone numbers must be a number format."
    validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create,:message =>"must be in @gmail.com"
end
