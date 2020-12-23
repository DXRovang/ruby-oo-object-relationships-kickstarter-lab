require "pry"

class Project

  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    array = ProjectBacker.all.select do |proj|
      proj.project == self
    end
    array.map do |proj|
      proj.backer
    end
  end
 

end