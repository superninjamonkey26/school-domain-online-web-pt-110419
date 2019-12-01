class School
  attr_reader :school_name, :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |key, value|
      @roster[key]=value.sort
    end
  end
end