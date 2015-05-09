class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :walks
    
    #validates :name, presence: true
    #validates :lastname, presence: true
    #validates :mobile, numericality: { only_integer: true }
    
    def fullname
      name + ' ' + lastname
    end
end
