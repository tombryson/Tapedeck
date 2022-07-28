class Album < ApplicationRecord
    belongs_to :genre, :optional => true
    belongs_to :artist, :optional => true
    has_many :songs
    has_and_belongs_to_many :tapedecks, :optional => true
end
