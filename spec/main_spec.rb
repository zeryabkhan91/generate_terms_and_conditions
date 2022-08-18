require_relative "../app/main.rb"
require_relative '../app/models/clause.rb'
require_relative "../app/models/section.rb"
require_relative '../app/models/terms_and_conditions_generator.rb'
require 'pry'

describe do
  it 'should be integer' do
    files = Dir.glob(File.join("#{Dir.pwd}/Inputs", '**', '*')).select{|file| File.file?(file)}
    files.each do |input|
      next unless File.file? input
      generator = TermsAndConditionsGenerator.new(input)
      content = generator.process
      expect(content).not_to eq(content.to_s)
    end
  end
end
