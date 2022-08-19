require_relative '../../app/models/clause.rb'
require_relative '../../app/modules/path.rb'
require_relative '../../app/modules/dataset.rb'
include Path
include DataSet

describe Clause, type: :model do
  it 'can be read clause of given id' do
    clauses = read_dataset("clauses")
    id = clauses.first['id']
    text = clauses.first['text']

    clause = Clause.new
    expect(clause.find(id)).to eq(text)
  end
end
