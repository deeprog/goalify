json.goals @goals do |goal|
  json.partial! 'goal', goal: goal
end
