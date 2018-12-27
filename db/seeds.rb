figure_list = {
    "Robert Moses" => {
    },
    "Al Smith" => {
    },
    "Theodore Roosevelt" => {
    },
    "Peter Stuyvesant" => {
    },
    "Boss Tweed" => {
    },
    "Michael Bloomberg" => {
    },
    "Ed Koch" => {
    },
    "Fiorello LaGuardia" => {
    },
    "Jimmy Walker" => {
    },
    "Belle Moskowitz" => {
    },
    "Billy The Kid" => {
    },
    "Mark Zuckerberg" => {
    },
    "Ada Lovelace" => {
    },
    "Linus Torvalds" => {
    }
  }

figure_list.each do |name, figure_hash|
  p = Figure.new
  p.name = name
  p.save
end

landmarks_list = {
    "BQE" => {
      :year_completed => 1947,
      :figure_id => 1
    },
    "Holland Tunnel" => {
      :year_completed => 1927,
      :figure_id => 5
    },
    "Wall Street Wall" => {
      :year_completed => 1684,
      :figure_id => 4
    },
    "Brooklyn Battery Tunnel" => {
      :year_completed => 1973,
      :figure_id => 10
    },
    "Madison Square Guarden" => {
      :year_completed => 1901,
      :figure_id => 10
    },
    "The big bull outside" => {
      :year_completed => 1995,
      :figure_id => 1
    },
    "Flatiron School" => {
      :year_completed => 2014,
      :figure_id => 5
    },
    "Museum Mile" => {
      :year_completed => 1058,
      :figure_id => 4
    },
    "Subway Station" => {
      :year_completed => 2015,
      :figure_id => 3
    },
    "Cast Iron" => {
      :year_completed => 1951,
      :figure_id => 3
    },
    "Shea Stadium" => {
      :year_completed => 1964,
      :figure_id => 2
    },
    "Flatiron Building" => {
      :year_completed => 1902,
      :figure_id => 8
    },
    "Brooklyn Bridge" => {
      :year_completed => 1883,
      :figure_id => 6
    }
  }

landmarks_list.each do |name, landmark_hash|
  p = Landmark.new
  p.name = name
  landmark_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end


title_list = {
    "Mayor" => {
    },
    "President" => {
    },
    "Governor" => {
    },
    "NYC Parks commissioner" => {
    },
    "The Mayor" => {
    },
    "The Don" => {
    },
    "Mr. President" => {
    }
  }

title_list.each do |name, figure_hash|
  p = Title.new
  p.name = name
  p.save
end

# figure = Figure.create(name: 'Robert Moses')
figure_title_list = {
    7 => {
      :title_id => 3,
      :figure_id => 2
    },
    3 => {
      :title_id => 3,
      :figure_id => 3
    },
    2 => {
      :title_id => 2,
      :figure_id => 3
    },
    1 => {
      :title_id => 1,
      :figure_id => 9
    },
    4 => {
      :title_id => 4,
      :figure_id => 1
    }
  }

  figure_title_list.each do |number, figure_title_hash|
    p = FigureTitle.new
    figure_title_hash.each do |attribute, value|
        p[attribute] = value
    end
    p.save
  end
