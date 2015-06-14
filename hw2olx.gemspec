Gem::Specification.new do |s|
  s.name = 'hw2olx'
  s.version = '0.0.1'
  s.date = '2015-06-10'
  s.summary = 'Homework to Open Learning XML (OLX)'
  s.description = 'Generates OLX components that can be imported into EdX Studio, including directives for using cloud-based autograders, from a properly-constructed student-facing README homework instructions file.'
  s.authors = ['Armando Fox']
  s.email = ['fox@berkeley.edu']
  s.homepage = 'http://rubygems.org/gems/hw2olx'
  s.license = 'MIT'
  s.files = %w(lib/hw2olx.rb
               lib/hw2olx/autograder_chunk.rb
               lib/hw2olx/vertical_chunk.rb
               lib/hw2olx/chunk.rb
               lib/hw2olx/chunker.rb
               bin/hw2olx
               )
  s.executables << 'hw2olx'
end

