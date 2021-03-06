class User < ApplicationRecord
  has_and_belongs_to_many :courses
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :citizen_id, presence: true

  def is?(type) 
    self.type == type
  end

end
