class Post < ActiveRecord::Base
  belongs_to :user
  has_many :corrections

def self.search(search)
  where("title LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
end

end
