class TermsAndConditionsGenerator
  def initialize(template_path)
    @template_content = File.read(template_path)
    @file_name = template_path.split('/').last
    @clause = Clause.new
    @section = Section.new
  end

  def process
    @dynamic_contents = @template_content.scan(/(?<=\[).*?(?=\])/)
    clauses, sections = separte_clauses_and_sections
    replace_sections(clauses, @clause)
    replace_sections(sections, @section)
    store_output
  end

  private

  def separte_clauses_and_sections
    clauses = @dynamic_contents.select { |c| c.include?('CLAUSE') }
    sections = @dynamic_contents.select { |c| c.include?('SECTION') }
    return clauses, sections
  end

  def replace_sections(data, dataset)
    data.each do |obj|
      obj_text = dataset.find(obj.split('-')[1].to_i)
      @template_content.gsub!("[#{obj}]", obj_text)
    end
  end

  def store_output
    path = Dir.pwd.gsub!("app", "") if Dir.pwd.include?('app')
    File.write("#{path}Output/#{@file_name}", @template_content, mode: "w")
  end
end
