require "json"
require_relative "./path.rb"

module DataSet
  include Path

  def read_dataset(dataset_name)
    path = root_path
    dataset_content = File.read("#{path}/dataset/#{dataset_name}.json")
    JSON.parse(dataset_content)
  end
end
