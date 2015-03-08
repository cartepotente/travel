class Room < ActiveRecord::Base
  belongs_to :hotel

 validates :name, presence: true

	def to_s
	     name
	end

end
