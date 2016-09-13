#!/usr/bin/env ruby

Dir.chdir(ARGV[0])
raw_extension = ARGV[1]
filename_pattern = /(.*).#{raw_extension}/

Dir.glob("*.#{raw_extension}") do |raw_file|
  base_file_name = filename_pattern.match(raw_file)[1]
  if File.exist?("#{base_file_name}.JPG") || File.exist?("#{base_file_name}.jpg")
    File.delete(raw_file)
  else
    oldFilename = "#{Dir.pwd}/#{raw_file}"
    newFilename = "#{base_file_name}.jpg"
    convertCommand = `convert #{oldFilename} #{newFilename}`
    File.delete(raw_file)
    puts "#{raw_file} converted to jpg, RAW deleted."
  end
end
