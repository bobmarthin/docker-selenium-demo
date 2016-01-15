class User < ActiveRecord::Base
  has_many :microposts
  #validates :name, FILL_IN, presence: true
  # validates FILL_IN, presence: true
end
