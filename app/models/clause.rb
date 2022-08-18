class Clause
  require 'json'
  require 'pry'

  def initialize
    path = Dir.pwd.include?('app')? Dir.pwd.gsub!("app", "") : Dir.pwd
    file = File.read("#{path}dataset/clauses.json")
    @clauses = JSON.parse(file)
  end

  def call_initialize
    initialize
  end

  def find(id = nil)
    return if id.nil?
    clause = @clauses.select{ |clause| clause['id'] == id }[0]
    return '' if clause.nil?
    clause["text"]
  end
end
