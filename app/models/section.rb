class Section
  require 'json'
  require_relative 'clause.rb'

  def initialize
    path = Dir.pwd.include?('app')? Dir.pwd.gsub!("app", "") : Dir.pwd
    file = File.read("#{path}dataset/sections.json")
    @sections = JSON.parse(file)
    @clause = Clause.new
  end

  def call_initialize
    initialize
    return @sections
  end

  def find(id = nil)
    return if id.nil?
    section = @sections.select{ |section| section['id'] == id }[0]
    return '' if section.nil?
    clauses = section["clauses_ids"].map{ |clause_id| @clause.find(clause_id) }
    clauses.join(';')
  end
end

