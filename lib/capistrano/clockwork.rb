if Gem::Specification.find_by_name('capistrano').version >= Gem::Version.new('3.0.0')
  load File.expand_path('../tasks/clockwork', __FILE__)
else
  raise "Capistrano 2 is not supported"
end
