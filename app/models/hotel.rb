class Hotel < ActiveRecord::Base
has_many :rooms, dependent: :destroy
validates :name, presence: true

accepts_nested_attributes_for :rooms, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true

def to_s
	name
end


end
