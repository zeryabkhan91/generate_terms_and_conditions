require_relative "../../app/models/section.rb"
require_relative "../../app/modules/path.rb"
require_relative "../../app/modules/dataset.rb"

include Path
include DataSet

describe Section, type: :model do
  it 'can be read section of given id' do
    section = Section.new
    clause = Clause.new

    sections = read_dataset("sections")
    id = sections.first['id']
    clauses = sections.first["clauses_ids"].map{ |clause_id| clause.find(clause_id) }
    text = clauses.join(';')

    expect(section.find(id)).to eq(text)
  end
end
