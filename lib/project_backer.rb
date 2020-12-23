require "pry"

class ProjectBacker

  @@all = []

  #note:  both arguments are objects
  def initialize(project, backer)
    @project = project
    @backer = backer
    @@all << self
    #binding.pry
  end

  def project
    @project
  end

  def backer
    @backer
  end

  def self.all
    @@all
  end


end