#!/usr/bin/env ruby

Dir.chdir(ARGV[0])
matcher = /(\d*).(JPG|DNG)/
Dir.foreach('.') do |file|
  fileMatches = matcher.match(file)
  unless fileMatches
    puts "There was no match."
    next
  end
  if fileMatches[2] === 'DNG'
    jpgName = "#{fileMatches[1]}.JPG"
    if File.exist?(jpgName) # if the JPG is there, delete the RAW(DNG)
      File.delete(file)
    else # there is no duplicate JPG, we need to make one
      oldFilename = "#{Dir.pwd}/#{file}"
      newFilename = "#{fileMatches[1]}.jpg"
      convertCommand = `convert #{oldFilename} #{newFilename}`
      File.delete(file)
    end
  end
end
