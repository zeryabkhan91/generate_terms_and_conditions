require_relative "../../app/models/section.rb"

describe Section, type: :model do
  it 'can be read' do
    section = Section.new
    sec = section.call_initialize
    id = sec.first['id']
    text = section.find(id)
    expect(section.find(id)).to eq(text)
  end
end
