# code here!
class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end
  
  def add_student(name, roster)
    if @roster.keys.include?(roster)
      @roster[roster] << name
    else
      @roster[roster] = [] 
      @roster[roster] << name
    end
  end
  
  def grade(roster)
    return @roster[roster]
  end
  
  def sort
    @roster.to_a.sort.to_h
  end
end