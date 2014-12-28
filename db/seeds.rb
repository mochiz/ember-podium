Result.destroy_all
Race.destroy_all
Rider.destroy_all
races = YAML.load_file(Rails.root.join('db', 'fixtures', 'races.yml'))
races.each do |key, value|
  Race.create(name: value['name'],
              icon: value['icon'],
              image: value['image'],
              start_at: value['start_at'],
              end_at: value['end_at'],
              url: value['url'])
end

riders = YAML.load_file(Rails.root.join('db', 'fixtures', 'riders.yml'))
riders.each do |key, value|
  Rider.create(name: value['name'],
               avatar: value['avatar'],
               team: value['team'])
end

results = YAML.load_file(Rails.root.join('db', 'fixtures', 'results.yml'))
results.each do |key, value|
  Result.create(race: Race.find_by(name: value['race']),
                rider: Rider.find_by(name: value['rider']),
                position: value['position'])
end
