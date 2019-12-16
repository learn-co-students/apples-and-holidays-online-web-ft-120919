require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter].each do |holiday, supply_array|
    supply_array << supply
  end
  # holiday_hash.each do |season, holiday|
  #   if season == :winter
  #     holiday[:christmas] << supply
  #     holiday[:new_years] << supply
  #     holiday_hash
  #   end
  # end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday[:memorial_day] << supply
      holiday_hash
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # modifies the original hash by adding supplies of a new holiday to a season
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # has all winter supplies
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  #should output the formatted list of holidays and their supplies
  holiday_hash.each do |holiday, items|
    puts holiday.to_s.capitalize << ":"
    items.each do |holiday, items|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{items.join(", ")}"
      # binding.pry
    end
  end
  
  # puts holiday.keys[0].to_s.capitalize << ":" && holiday[:christmas].to_s
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

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday_hash[season].map do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end

# holiday_hash[season][holiday].include?("BBQ")


# return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # Write a method to collect all holidays with "BBQ" in the supply array. The method should behave as seen below:







