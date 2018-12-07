class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  def self.avg_age
    average(:age)
  end

  def self.all_missions
    self.select('astronauts.*').joins(:missions)
  end

end
