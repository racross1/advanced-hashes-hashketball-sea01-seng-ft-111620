require 'pry'

def most_points_scored 
  data = game_hash
  highest_score = 0 
  highest_scorer =""
  data.each do |team_key, value|
    data[team_key].each do |team_attributes, value|
      data[team_key][:players].each do |hash|
        if hash[:points] > highest_score
          highest_score = hash[:points]
          highest_scorer= hash[:name]
          binding.pry
        end 
      end 
    end
  end 
puts highest_scorer
end 
  