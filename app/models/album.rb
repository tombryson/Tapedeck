class Album < ApplicationRecord
    belongs_to :genre
    belongs_to :artist
    has_many :songs
    has_and_belongs_to_many :tapedecks
end
