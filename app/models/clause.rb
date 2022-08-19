require_relative "../modules/path.rb"
require_relative "../modules/dataset.rb"

class Clause
  include Path
  include DataSet

  def initialize
    @clauses = read_dataset("clauses")
  end

  def find(id = nil)
    return if id.nil?

    clause = @clauses.select{ |clause| clause["id"] == id }[0]
    return '' if clause.nil?

    clause["text"]
  end
end
