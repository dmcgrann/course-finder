class CourseFinder::Course
  attr_accessor :id, :description, :extra
  @@all = []
  @@overview = ""

  def initialize(information)
    information.each {|k,v| self.send(("#{k}="), v)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.overview
    @@overview
  end

  def self.find(n)
    self.all[n-1]
  end

  def self.set_overview(overview)
    @@overview = overview
  end
end
