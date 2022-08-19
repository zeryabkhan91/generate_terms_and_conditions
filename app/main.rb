require_relative "./models/clause.rb"
require_relative "./models/section.rb"
require_relative "./services/terms_and_conditions_generator.rb"
require_relative "./modules/path.rb"

include Path

if ARGV.count == 0
  input_file_paths = Dir.glob(File.join('../Inputs', '**', '*')).select{|file| File.file?(file)}

  input_file_paths.each do |input_file_path|
    next unless File.file? input_file_path

    generator = TermsAndConditionsGenerator.new(input_file_path)
    content = generator.process!
  end
else
  ARGV.each do |file_name|
    input_file_path = inputs_path(file_name)

    if input_file_path
      generator = TermsAndConditionsGenerator.new(input_file_path)
      generator.process!
    else
      puts "File does not exist"
    end
  end
end
