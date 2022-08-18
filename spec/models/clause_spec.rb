require_relative '../../app/models/clause.rb'

describe Clause, type: :model do
  it 'can be read' do
    clause = Clause.new
    cal = clause.call_initialize
    id = cal.first['id']
    text = clause.find(id)
    expect(clause.find(id)).to eq(text)
  end
end
