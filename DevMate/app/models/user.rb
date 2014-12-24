class User < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :devpros
  has_many :materials
end
