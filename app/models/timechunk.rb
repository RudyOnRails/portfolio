class Timechunk < ActiveRecord::Base
  attr_accessible :description, :length, :project_id, :title
end
