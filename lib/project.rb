class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

  def add_backer_noloop(backer)
    @backers << backer
  end

end
