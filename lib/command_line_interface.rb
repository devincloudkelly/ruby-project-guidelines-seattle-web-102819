
## helper method to create x number of blank lines based on your argument
def blank_spacer(num)
    num.times do
        puts ""
    end
end

## Puts out greeting when starting the app
## Stretch goal: create an ASCII block title
def welcome
    blank_spacer(4)
    puts "             Welcome to the Mushroom Foraging app!"
    puts "    You can use this app to find mushrooms to forage, places"
    puts "        to forage, and log your recent foraging trips."
    puts ""
    puts "                    Hit ENTER to continue"
    blank_spacer(4)
    user_input = gets.chomp
end


## This method puts out all of the menu options. 
## Stretch goal: add option to exit, reload menu after any selection
def menu_options
    blank_spacer(6)
    puts "  To get started, choose from one of the following options"
    puts "################################################################################"
    puts ""
    puts "  RANDOM MUSHROOM   - Expand your knowledge. This generates a random mushroom instance."
    puts ""
    puts "  MY TRIPS          - Shows you the results of your recent foraging trips. See"
    puts "                      how many mushrooms were collected, what type and where."
    puts ""
    puts "  FIND NEW AREA     - Enter the name of a mushroom you'd like to harvest and"
    puts "                      get a list of all the areas where this mushroom is found."
    puts ""
    puts "  FIND NEW MUSHROOM - Enter the name of an area you'd like to forage in to "
    puts "                      get a list of all the mushrooms found there."
    puts ""
    puts "  LOG TRIP          - Log the results of your recent foraging trip."
    puts ""
    puts "  UPDATE TRIP       - Update the information in one of your recent entries."
    puts ""
    puts "  DELETE TRIP       - Delete a recent foraging trip."
    puts ""
    puts "  LOCAL EDIBLES     - Find edible mushrooms within X distance of you."
    puts ""
    puts "###############################################################"
    puts ""
end

## this method puts out a random mushroom and all of that mushrooms facts and features.
def random_mushroom
    mushroom = Mushroom.all.sample
    blank_spacer(4)
    puts "  - The #{mushroom.name} Mushroom - ".upcase
    puts ""
    puts "    This mushroom is primarily found in #{mushroom.habitat}s."
    puts "  It is #{mushroom.edible? ? "edible" : "NOT edible"} and it is #{mushroom.poisonous? ? "POISONOUS." : "not poisonous."}"
    puts "  Go foraging #{mushroom.days_after_rain_til_growth} day(s) after rainfall for the"
    puts "  best chance to find the #{mushroom.name} mushroom."
    blank_spacer(4)

end

## this method prompts the user for their name. Once received, it matches the name to 
## a user, then returns the 5 most receng foraging trips for that user.
## It puts out only the vital trip info for each trip.
def my_trips
    blank_spacer(4)
    puts "  Enter your full name to see your 5 most recent trips."
    puts ""
    user_input = gets.chomp.downcase
    if User.find_by(name: "Devin Kelly")
        user = User.find_by(name: "#{user_input.titleize}")
        forage = Forage.where(user_id: user.id).order(created_at: :desc).limit(5)
        forage.each_with_index do |forage, index|
            mushroom = Mushroom.find(forage.mushroom_id)
            location = Location.find(forage.location_id)
        puts ""
        puts ""
        puts "Trip # #{index + 1}"
        puts "-------------"
        puts ""
        puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
        puts "They were found in the #{location.terrain} region of #{location.name}."
        puts "This trip occurred on #{forage.created_at}"
        end
        blank_spacer(2)
        if forage.length < 5
            puts "You've only made #{forage.length} foraging trips. Get outside and pick more mushrooms!"
        end
        blank_spacer(4)
    end
end


## method takes in a mushroom name, then returns all of the areas where it has been foraged.
## stretch goal, order results by quantity of mushrooms foraged in that area.
def find_new_area
    blank_spacer(4)
    puts "Enter the name of a mushroom to discover new areas you can forage for it."
    user_input = gets.chomp.downcase
    mushroom = Mushroom.find_by(name: "#{user_input.titleize}")
    # forages = Forage.find_by(mushroom_id: mushroom.id).order(:location_id) ##this isn't working. Troubleshoot after lunch
    blank_spacer(6)
    # forages.each do |forage|
    #     puts forage
    # end
    # puts mushroom.name
    # puts mushroom.habitat
    blank_spacer(4)
end


## this method identifies the user's menu input and loads the appropriate method.
## Stretch goal: give error message if unknown prompt is entered, allow user to exit program, return to menu after command is run
def menu_selection
    user_input = gets.chomp.downcase
    if user_input == "random mushroom"
        random_mushroom
    elsif user_input == "my trips"
        my_trips
    elsif user_input == "find new area"
        find_new_area
    end
end