class Test < ApplicationRecord


validates :uname, presence: true , length: {minimum: 1} 
validates :content , length: {maximum: 10} 

has_many :comments

end
