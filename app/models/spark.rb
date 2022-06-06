class Spark < ApplicationRecord
    has_many :active_powers
    has_one :passive
    has_one :supernova
    has_many :persistent_mods
    has_many :power_mods
end
