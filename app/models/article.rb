class Article < ActiveRecord::Base
  validate :title, presence: true
end
