require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
  
  
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array


def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday, supplies|
  supplies << supply
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_name|
    puts "#{season.to_s.capitalize}:"
    
    holiday_name.each do |holiday, supply_array|
      puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize}.join(" ")}: #{supply_array.join(", ")}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
newArray = []
holiday_hash.each do |season, holiday_name|
  holiday_name.each do |holiday_name,supply_array|
    if supply_array.include?("BBQ")
      newArray << holiday_name
      newArray.flatten
    end
  end
end
newArray
end
