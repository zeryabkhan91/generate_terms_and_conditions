require_relative '../../app/modules/path.rb'
require_relative '../../app/modules/dataset.rb'
require_relative '../../app/services/terms_and_conditions_generator.rb'
require_relative '../../app/models/clause.rb'
require_relative "../../app/models/section.rb"

require "pry"

describe TermsAndConditionsGenerator, type: :model do
  it "processes the file file passed to the class" do
    expected_output = "This document is made of plaintext.\nIs made of And dies.\nIs made of The white horse is white.\nIs made of The quick brown fox;jumps over the lazy dog.\n\nYour legals\n"

    input_file_path = "#{Dir.pwd}/Inputs/sampletest.txt"
    output_file_path = "#{Dir.pwd}/Output/sampletest.txt"

    test_generator = TermsAndConditionsGenerator.new(input_file_path)
    test_generator.process!

    generated_output = File.read(output_file_path)
    expect(File.read(output_file_path)).to eq(expected_output)
  end
end
