# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

module UsersHelper
  def options_for_seasons
    Sex.all.map do |sex| 
      [sex.sex, sex.id] 
    end
  end

  def get_countries 
    Country.all.map do |country| 
      [country.country_name, country.id] 
    end
  end

  def get_countries_codes
    Country.all.map do |country| 
      [country.country_phone_code, country.id] 
    end
  end

  def set_country_code

  end

  def get_operators
    Operator.all.map do |operator| 
      [operator.operator_code, operator.id] 
    end
  end

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - (dob.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def is_current_user?(user)
    user == current_user
  end
end
