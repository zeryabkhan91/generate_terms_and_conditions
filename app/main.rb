require_relative './models/clause.rb'
require_relative './models/section.rb'
require_relative './models/terms_and_conditions_generator.rb'

files = Dir.glob(File.join('../Inputs', '**', '*')).select{|file| File.file?(file)}
files.each do |input|
  next unless File.file? input
  generator = TermsAndConditionsGenerator.new(input)
  content = generator.process
end

