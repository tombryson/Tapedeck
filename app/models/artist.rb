class Artist < ApplicationRecord
    has_many :albums
    has_many :songs, :through => :albums
    has_many :genres, :through => :albums
end
