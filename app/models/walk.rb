class Walk < ActiveRecord::Base
    belongs_to :user
    
    validates :distance, numericality: true
end
