class Question < ActiveRecord::Base
	has_many :options
	belongs_to :quiz_type
end
