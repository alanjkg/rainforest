class Product < ActiveRecord::Base
	validates :description, :name, :url, :presence => true
	validates :price_in_cents, :numericality => {:only_integer => true}

	validates :url, presence: true

	validates_presence_of :name, :description, :url
end
