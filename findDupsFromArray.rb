#!/usr/bin/env ruby
#DRY = Do not repeat yourself

arrayVar = [1,2,3,3,4,4,55,6]

def self.findDupsInArray(arrayVar)
      uniqueArray = Array.new
      arrayVar.each do |findDups|
        if (uniqueArray.include? findDups) == false then
          uniqueArray << findDups
        end
      end
      puts "unique array values are #{uniqueArray}"
end


findDupsInArray(arrayVar)
