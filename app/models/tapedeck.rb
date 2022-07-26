class Tapedeck < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :albums
    has_many :songs, :through => :albums
    has_many :genres, :through => :albums
    has_many :artists, :through => :albums
end
