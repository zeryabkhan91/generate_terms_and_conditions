
module Path
  def root_path
    Dir.pwd.include?('app')? Dir.pwd.gsub!("app", "") : Dir.pwd
  end

  def inputs_path(arg)
    files = Dir.glob(File.join('../Inputs', "#{arg}")).select{|file| File.file?(file)}
    arg = "../Inputs/" + arg
    files.include?(arg) ? arg : false
  end

  def errors_file(filename, content)
    path = root_path
    File.write("#{path}Errors/#{filename}", content, mode: "a")
  end
end
