%w(rubygems rake echoe).each do |gem|
  require gem
end

Echoe.new('find_all_by_date_range','0.1.1') do |p|
  p.description    = "Extends ActiveRecord ClassMethods to contain a find_by_date_range method"
  p.url            = "http://www.timmatheson.com"
  p.author         = "Tim Matheson"
  p.email          = "me@timmatheson.com"
  p.ignore_pattern = ["tmp/*","script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }