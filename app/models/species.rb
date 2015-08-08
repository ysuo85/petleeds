class Species < ActiveRecord::Base
  attr_accessor :species_id, :species_name
  def initialize(attributes = {})
    :species_id = attributes[:species_id]
    :species_name = attributes[:species_name] 
  end
end
