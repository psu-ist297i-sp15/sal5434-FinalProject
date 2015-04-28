class Mixin < ActiveRecord::Base
	has_many :dailylogs, dependent: :destroy
end
