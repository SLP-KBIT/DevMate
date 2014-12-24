class Topic < ActiveRecord::Base
  belongs_to :devpro
  has_many :materials
end
