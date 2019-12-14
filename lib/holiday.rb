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
   holiday_hash.each do |season, festivals|
     if season == :winter 
       festivals.each do |festival, supplies|
            if festival == :christmas || :new_years
                 supplies << supply
            end
        end
     end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash.each do |season, festivals|
        if season == :spring
           festivals.each do |festival, supplies|
              if festival == :memorial_day
                 supplies << supply
              end
            end
        end
      end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
    holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each do |seasons, festivals|
        puts "#{seasons.capitalize}:"
        festivals.each do |festival, supplies|
          #to convert :christmas -- symbols to string use to_s
           #puts" #{festival.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{supplies.join(", ")}"
            puts "  #{festival.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{supplies.join(", ")}"
        end
     end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   holiday_array =[]
    holiday_hash.each do |seasons, festivals|
       festivals.each do |festival, supplies|
         if supplies.include?("BBQ")
            holiday_array << festival
         end
        end
    end
    holiday_array
end







