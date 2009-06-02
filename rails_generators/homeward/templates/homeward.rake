begin
  load 'homeward/lib/tasks/homeward.rake'
rescue LoadError
  puts "Could not find the homeward raketask, did you install the 'sandro-homeward' gem?"
end
