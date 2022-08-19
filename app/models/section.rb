require_relative "clause.rb"
require_relative "../modules/path.rb"
require_relative "../modules/dataset.rb"

class Section
  include Path
  include DataSet

  def initialize
    @sections = read_dataset("sections")
    @clause = Clause.new
  end

  def find(id = nil)
    return if id.nil?

    section = @sections.select{ |section| section["id"] == id }[0]
    return "" if section.nil?

    clauses = section["clauses_ids"].map{ |clause_id| @clause.find(clause_id) }
    clauses.join(";")
  end
end

