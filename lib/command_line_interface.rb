
## helper method to create x number of blank lines based on your argument
def blank_spacer(num)
    num.times do
        puts ""
    end
end

def puts_name(model)
    capital_model = model.titleize
    model = capital_model.all.each {|model| puts model.name}
end


def welcome_two


puts "     ______   __  __     ______        __         ______     ______     ______     __   __     _____        ______     ______                                     "
puts "    /\__  _\ /\ \_\ \   /\  ___\      /\ \       /\  ___\   /\  ___\   /\  ___\   /\ "-.\ \   /\  __-.     /\  __ \   /\  ___\                                   "
puts "    \/_/\ \/ \ \  __ \  \ \  __\      \ \ \____  \ \  __\   \ \ \__ \  \ \  __\   \ \ \-.  \  \ \ \/\ \    \ \ \/\ \  \ \  __\                                   "
puts "       \ \_\  \ \_\ \_\  \ \_____\     \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\\"\_\  \ \____-     \ \_____\  \ \_\                                     "
puts "        \/_/   \/_/\/_/   \/_____/      \/_____/   \/_____/   \/_____/   \/_____/   \/_/ \/_/   \/____/      \/_____/   \/_/                                     "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "                                                                                                                                                                 "
puts "     ______        __         __     __   __     __  __        ______   ______        ______   __  __     ______        ______     ______     ______   ______    "
puts "    /\  __ \      /\ \       /\ \   /\ "-.\ \   /\ \/ /       /\__  _\ /\  __ \      /\__  _\ /\ \_\ \   /\  ___\      /\  ___\   /\  __ \   /\  == \ /\  ___\   "
puts "    \ \  __ \     \ \ \____  \ \ \  \ \ \-.  \  \ \  _"-.     \/_/\ \/ \ \ \/\ \     \/_/\ \/ \ \  __ \  \ \  __\      \ \ \____  \ \  __ \  \ \  _-/ \ \___  \  "
puts "     \ \_\ \_\     \ \_____\  \ \_\  \ \_\\"\_\  \ \_\ \_\       \ \_\  \ \_____\       \ \_\  \ \_\ \_\  \ \_____\     \ \_____\  \ \_\ \_\  \ \_\    \/\_____\ "
puts "      \/_/\/_/      \/_____/   \/_/   \/_/ \/_/   \/_/\/_/        \/_/   \/_____/        \/_/   \/_/\/_/   \/_____/      \/_____/   \/_/\/_/   \/_/     \/_____/ "
puts "                                                                                                                                                                 "
puts "    

end



## Puts out greeting when starting the app
## Stretch goal: create an ASCII block title
def welcome
    blank_spacer(4)                             "                                                                                
puts "  88b           d88                          88                                                                     "  
puts "  888b         d888                          88                                                                     "  
puts "  88`8b       d8'88                          88                                                                     "  
puts "  88 `8b     d8' 88  88       88  ,adPPYba,  88,dPPYba,   8b,dPPYba,   ,adPPYba,    ,adPPYba,   88,dPYba,,adPYba,   "  
puts "  88  `8b   d8'  88  88       88  I8[    \"\"  88P'    \"8a  88P'   \"Y8  a8\"     \"8a  a8\"     \"8a  88P'   \"88\"    \"8a  "  
puts "  88   `8b d8'   88  88       88   `\"Y8ba,   88       88  88          8b       d8  8b       d8  88      88      88  "  
puts "  88    `888'    88  \"8a,   ,a88  aa    ]8I  88       88  88          \"8a,   ,a8\"  \"8a,   ,a8\"  88      88      88  "  
puts "  88     `8'     88   `\"YbbdP'Y8  `\"YbbdP\"'  88       88  88           `\"YbbdP\"'    `\"YbbdP\"'   88      88      88  "  
puts "                                                                                                                    "  
puts "                                                                                                                    "  
puts "                                                                                                                    "  
puts "             88888888888                                                88                                          "  
puts "             88                                                         ""                                          "  
puts "             88                                                                                                     "  
puts "             88aaaaa   ,adPPYba,   8b,dPPYba,  ,adPPYYba,   ,adPPYb,d8  88  8b,dPPYba,    ,adPPYb,d8                "  
puts "             88\"\"\"\"\"  a8\"     \"8a  88P'   \"Y8  \"\"     `Y8  a8\"    `Y88  88  88P'   `\"8a  a8\"    `Y88                "  
puts "             88       8b       d8  88          ,adPPPPP88  8b       88  88  88       88  8b       88                "  
puts "             88       \"8a,   ,a8\"  88          88,    ,88  \"8a,   ,d88  88  88       88  \"8a,   ,d88                "  
puts "             88        `\"YbbdP\"'   88          `\"8bbdP\"Y8   `\"YbbdP\"Y8  88  88       88   `\"YbbdP\"Y8                "  
puts "                                                            aa,    ,88                    aa,    ,88                "  
puts "                                                             \"Y8bbdP\"                      \"Y8bbdP\"                 "  
puts ""  
puts ""
    puts "                                       Welcome to the Mushroom Foraging app!"
    puts "                              You can use this app to find mushrooms to forage, places"
    puts "                                  to forage, and log your recent foraging trips."
    puts ""
    puts "                                              Hit ENTER to continue"
    blank_spacer(4)
    user_input = gets.chomp
end


## This method puts out all of the menu options. 
## Stretch goal: add option to exit, reload menu after any selection
def menu_options
    blank_spacer(6)
    puts "  To get started, enter any of the following commands"
    puts "################################################################################"
    puts ""
    puts "  MY TRIPS          - Shows you the results of your recent foraging trips. See"
    puts "                      how many mushrooms were collected, what type and where."
    puts ""
    puts "  LOG TRIP          - Log the results of your recent foraging trip."
    puts ""
    puts "  UPDATE QUANTITY   - Update the quantity of mushrooms harvested in your last entry."
    puts ""
    puts "  DELETE TRIP       - Delete a recent foraging trip."
    puts ""
    puts "  FIND NEW AREA     - Enter the name of a mushroom you'd like to harvest and"
    puts "                      get a list of all the areas where this mushroom is found."
    puts ""
    puts "  FIND NEW MUSHROOM - Enter the name of an area you'd like to forage in to "
    puts "                      get a list of all the mushrooms found there."
    puts ""
    puts "  RANDOM MUSHROOM   - Expand your knowledge. This generates a random mushroom instance."
    puts ""
    puts "  RANDOM AREA       - Expand your knowledge. This generates a random location instance."
    puts ""
    # puts "  LOCAL EDIBLES     - Find edible mushrooms within X distance of you."
    # puts ""
    puts "  EXIT              - Exit out of the program"
    puts ""
    puts "###############################################################"
    puts ""
    menu_selection
end

def secret_menu
    blank_spacer(6)
    puts "  You've discovered the secret menu. Type a command.."
    puts "################################################################################"
    puts ""
    puts "  EAT A MUSHROOM     - Eat one of the mushrooms and see what effect it has on you.."
    puts ""
    puts "################################################################################"
    blank_spacer(4)
    menu_selection
end


## this method puts out a random mushroom and all of that mushrooms facts and features.
def random_mushroom
    mushroom = Mushroom.all.sample
    blank_spacer(4)
    puts "  - The #{mushroom.name} Mushroom - ".upcase
    puts ""
    puts "    This mushroom is primarily found in #{mushroom.habitat}s."
    puts "  It is #{mushroom.edible? ? "edible" : "NOT edible"} and it is #{mushroom.poison_level} poisonous."
    puts "  Go foraging #{mushroom.days_after_rain_til_growth} day(s) after rainfall for the"
    puts "  best chance to find the #{mushroom.name} mushroom."
    blank_spacer(4)
end

## this method puts out a random location and all of it's vital info.
def random_area
    location = Location.all.sample
    blank_spacer(4)
    puts "  - #{location.name} - ".upcase
    puts ""
    puts "    This location primarily consists of #{location.terrain} terrain."
    puts "  It is located at #{location.coordinates}."
    blank_spacer(4)
end

## this method prompts the user for their name. Once received, it matches the name to 
## a user, then returns the 5 most recent foraging trips for that user.
## It puts out only the vital trip info for each trip.
def my_trips
    blank_spacer(4)
    puts "  Please enter your full name."
    puts ""
    user_input = gets.chomp.downcase
        user = User.find_by(name: "#{user_input.titleize}")
        forage = nil
        if user != nil
            forage = Forage.where(user_id: user.id).order(created_at: :desc).limit(5)
            forage.each_with_index do |forage, index|
                mushroom = Mushroom.find(forage.mushroom_id)
                location = Location.find(forage.location_id)
            puts ""
            puts ""
            puts "Trip # #{index + 1}"
            puts "-------------"
            puts ""
            puts "Forage ID: #{forage.id}"
            puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
            puts "They were found in the #{location.terrain} region of #{location.name}."
            puts "This trip occurred on #{forage.created_at.strftime("%m-%d-%Y")}"
            end
            blank_spacer(2)
            if forage.length < 5 && forage.length > 0
                puts "You've only made #{forage.length} foraging trips. Get outside and pick more mushrooms!"
            end
        else
            blank_spacer(4)
            puts "No such user found. Log your first trip so you can start tracking your foraging."
            # puts "Press any key to continue"
            return nil
        blank_spacer(2)
        end
    return forage
end


## method takes in a mushroom name, then returns all of the areas where it has been foraged.
## stretch goal, order results by quantity of mushrooms foraged in that area.
## check out find_each for this query
def find_new_area
    blank_spacer(4)
    puts "Enter the name of a mushroom to discover new areas you can forage for it."
    blank_spacer(2)
    user_input = gets.chomp.downcase.titleize
    mushroom = Mushroom.find_by(name: user_input)
    locations = []
    if mushroom != nil
        blank_spacer(2)
        puts "These are the locations where you can find this mushroom:"
        puts "------------------------------------------------------------"
        blank_spacer(2)
        mushroom_forages = Forage.where(mushroom_id: mushroom.id)
        mushroom_forages.select do |forage|
            location = Location.find(forage.location_id)
            locations << location.name
        end
        locations = locations.uniq
        puts locations
        blank_spacer(2)
    else 
        blank_spacer(4)
        puts "That mushroom name is not valid."
        blank_spacer(2)
        return
    end
end


## This method prompts a user to type in a location, then returns all of the mushrooms
## that have been foraged in that area.
## come back to this
def find_new_mushroom
    blank_spacer(4)
    puts "Enter the name of a location to discover new mushrooms in that area."
    blank_spacer(2)
    user_input = gets.chomp.downcase.titleize
    location = Location.find_by(name: user_input)
    mushrooms = []
    if location != nil
        blank_spacer(2)
        puts "These are the mushrooms that have been foraged in this area:"
        puts "------------------------------------------------------------"
        blank_spacer(2)
        location_forages = Forage.where(location_id: location.id)
        location_forages.select do |forage|
            mushroom = Mushroom.find(forage.mushroom_id)
            mushrooms << mushroom.name
        end
        mushrooms = mushrooms.uniq
        puts mushrooms
        blank_spacer(2)
    else 
        blank_spacer(4)
        puts "That location name is not valid."
        blank_spacer(2)
        return
    end
end

def log_trip
    blank_spacer(4)
    puts "Let's log your recent foraging trip. Please enter your full name"
    user_name = gets.chomp.downcase.titleize
    user = User.find_or_create_by(name: user_name) {|user| user.age = rand(15..78)}
    blank_spacer(2)
    puts "Thank you #{user.name}. Now enter the name of the location where you foraged."
    loc_input = gets.chomp.downcase.titleize
    location = Location.find_or_create_by(name: loc_input) {|location| location.terrain = ["hilly", "flat", "mountainous"].sample}
    blank_spacer(2)
    puts "Thank you. Which mushroom did you forage?"
    mush_input = gets.chomp.downcase.titleize
    mushroom = Mushroom.find_or_create_by(name: mush_input) {|mush| mush.poison_level = ["not", "mildly", "moderately", "extremely"].sample}
    blank_spacer(2)
    puts "Great - lastly, how many #{mushroom.name} mushrooms did you harvest on this trip?"
    qty_input = gets.chomp
    forage = Forage.create(mushroom_id: mushroom.id, location_id: location.id, quantity_harvested: qty_input, user_id: user.id)
    blank_spacer(6)
    puts "Awesome! Here are the details of your recent foraging trip:"
    puts "-----------------------------------------------------------"
    blank_spacer(2)
    puts "Forage ID: #{forage.id}"
    puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
    puts "They were found in the #{location.terrain} region of #{location.name}."
    puts "This trip occurred on #{forage.created_at.strftime("%m-%d-%Y")}"
    blank_spacer(4)
end


## This method udpates the quantity of mushrooms logged in the most recent entry.
## stretch goal: expand the functionality of this method to include updating
## one or multiple attributes of the recent entry.
def update_quantity
blank_spacer(4)
puts "Here is your recent trip info:"
puts "-------------------------------"
forage = Forage.last
mushroom = Mushroom.find(forage.mushroom_id)
location = Location.find(forage.location_id)
puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
puts "They were found in the #{location.terrain} region of #{location.name}."
puts "This trip occurred on #{forage.created_at.strftime("%m-%d-%Y")}"
blank_spacer(4)
puts "Ok, let's update this entry."
blank_spacer(2)
puts "What is the updated quantity of #{mushroom.name} mushrooms you'd like to log?"
user_input = gets.chomp
Forage.update(forage.id, quantity_harvested: user_input)
forage = Forage.last
blank_spacer(4)
puts "Great, here's your updated entry:"
puts "----------------------------------"
blank_spacer(2)
puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
puts "They were found in the #{location.terrain} region of #{location.name}."
puts "This trip occurred on #{forage.created_at.strftime("%m-%d-%Y")}"
end

## deletes a foraging instance. 
def delete_trip
    trips = my_trips
    blank_spacer(4)
    if trips == nil
        return
    else
    puts "Enter the number of the trip that you would like to delete (ex. 2)"
     blank_spacer(2)
     user_input = gets.chomp.to_i
     index = user_input - 1
     id_to_delete = trips[index].id
     puts "Are you absolutely sure you want to delete this trip? Once deleted, it cannot be recovered."
     puts "To delete this trip, type YES. To stop deletion, type NO"
     blank_spacer(2)
     user_input = gets.chomp.downcase
        if user_input == "yes"
            Forage.delete(id_to_delete)
            blank_spacer(2)
            puts "Your trip has been deleted."
        elsif user_input == "no"
            return
        else
            blank_spacer(2)
            puts "I'm sorry, that isn't a valid command."
            blank_spacer(2)
        end
    end
end

## this method returns the sum of mushrooms that you gathered in your 5 most recent trips. 
## It returns the totals quantity for each mushroom that you foraged.
## Values are saved in a hash with mushroom_id as the key and quantity as the value
def my_mushrooms
    trips = my_trips
    mushrooms = {}
    blank_spacer(4)
    if trips == nil
        return
    else
        trips.each do |trip|
            if !mushrooms[trip.mushroom_id]
                mushrooms[trip.mushroom_id] = 0
                mushrooms[trip.mushroom_id] += trip.quantity_harvested
            else
                mushrooms[trip.mushroom_id] += trip.quantity_harvested
            end
        end
    end
    blank_spacer(2)
    puts "Your total recent harvest is comprised of:"
    puts "---------------------------------------------------------"
    blank_spacer(2)
    mushrooms.each do |id, qty|
        name = Mushroom.find(id).name
        puts "#{qty} #{name} mushrooms"
    end
    blank_spacer(2)
    mushrooms
end

## it would be nice to add a toxicity counter to the user to track over time.
def chance_of_poison(instance)
    # ["not", "mildly", "moderately", "extremely"]
    poison_level = instance.poison_level
    blank_spacer(2)
    if poison_level == "not"
        blank_spacer(2)
        puts "Congrats, that wasn't a poisonous mushroom."
    elsif poison_level == "mildly"
        puts "That was a mildly poisonous mushroom."
        if [true, false, false, false, false].sample == true
            blank_spacer(2)
            puts "Ohhh, you don't look so good. You shouldn't eat anymore of those mushrooms"
        else
            blank_spacer(2)
            puts "However, you experienced no ill-effects. Looks like you're safe this time..."
        end
    elsif poison_level == "moderately"
        puts "That was a moderately poisonous mushroom."
        if [true, false].sample == true
            blank_spacer(2)
            puts "Eating that mushroom has made you ill. Enjoy vomiting all night. And all day tomorrow."
        else
            blank_spacer(2)
            puts "It seems this mushroom didn't affect you..."
        end
    elsif poison_level == "extremely"
        blank_spacer(2)
        puts "That mushroom was EXTREMELY poisonous!!!"
        blank_spacer(2)
        15.times do 
            puts "You are dead."
        end
    end
    blank_spacer(2)
end

def magic_title
    blank_spacer(4)
    puts "▄▄▄█████▓ ██░ ██  ▄▄▄     ▄▄▄█████▓    █     █░ ▄▄▄        ██████                    "
    puts "▓  ██▒ ▓▒▓██░ ██▒▒████▄   ▓  ██▒ ▓▒   ▓█░ █ ░█░▒████▄    ▒██    ▒                    "
    puts "▒ ▓██░ ▒░▒██▀▀██░▒██  ▀█▄ ▒ ▓██░ ▒░   ▒█░ █ ░█ ▒██  ▀█▄  ░ ▓██▄                      "
    puts "░ ▓██▓ ░ ░▓█ ░██ ░██▄▄▄▄██░ ▓██▓ ░    ░█░ █ ░█ ░██▄▄▄▄██   ▒   ██▒                   "
    puts "  ▒██▒ ░ ░▓█▒░██▓ ▓█   ▓██▒ ▒██▒ ░    ░░██▒██▓  ▓█   ▓██▒▒██████▒▒                   "
    puts "  ▒ ░░    ▒ ░░▒░▒ ▒▒   ▓▒█░ ▒ ░░      ░ ▓░▒ ▒   ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░                   "
    puts "    ░     ▒ ░▒░ ░  ▒   ▒▒ ░   ░         ▒ ░ ░    ▒   ▒▒ ░░ ░▒  ░ ░                   "
    puts "  ░       ░  ░░ ░  ░   ▒    ░           ░   ░    ░   ▒   ░  ░  ░                     "
    puts "          ░  ░  ░      ░  ░               ░          ░  ░      ░                     "
    puts "                                                                                     "
    puts " ▄▄▄          ███▄ ▄███▓ ▄▄▄        ▄████  ██▓ ▄████▄                                "
    puts "▒████▄       ▓██▒▀█▀ ██▒▒████▄     ██▒ ▀█▒▓██▒▒██▀ ▀█                                "
    puts "▒██  ▀█▄     ▓██    ▓██░▒██  ▀█▄  ▒██░▄▄▄░▒██▒▒▓█    ▄                               "
    puts "░██▄▄▄▄██    ▒██    ▒██ ░██▄▄▄▄██ ░▓█  ██▓░██░▒▓▓▄ ▄██▒                              "
    puts " ▓█   ▓██▒   ▒██▒   ░██▒ ▓█   ▓██▒░▒▓███▀▒░██░▒ ▓███▀ ░                              "
    puts " ▒▒   ▓▒█░   ░ ▒░   ░  ░ ▒▒   ▓▒█░ ░▒   ▒ ░▓  ░ ░▒ ▒  ░                              "
    puts "  ▒   ▒▒ ░   ░  ░      ░  ▒   ▒▒ ░  ░   ░  ▒ ░  ░  ▒                                 "
    puts "  ░   ▒      ░      ░     ░   ▒   ░ ░   ░  ▒ ░░                                      "
    puts "      ░  ░          ░         ░  ░      ░  ░  ░ ░                                    "
    puts "                                              ░                                      "
    puts " ███▄ ▄███▓ █    ██   ██████  ██░ ██  ██▀███   ▒█████   ▒█████   ███▄ ▄███▓          "
    puts "▓██▒▀█▀ ██▒ ██  ▓██▒▒██    ▒ ▓██░ ██▒▓██ ▒ ██▒▒██▒  ██▒▒██▒  ██▒▓██▒▀█▀ ██▒          "
    puts "▓██    ▓██░▓██  ▒██░░ ▓██▄   ▒██▀▀██░▓██ ░▄█ ▒▒██░  ██▒▒██░  ██▒▓██    ▓██░          "
    puts "▒██    ▒██ ▓▓█  ░██░  ▒   ██▒░▓█ ░██ ▒██▀▀█▄  ▒██   ██░▒██   ██░▒██    ▒██           "
    puts "▒██▒   ░██▒▒▒█████▓ ▒██████▒▒░▓█▒░██▓░██▓ ▒██▒░ ████▓▒░░ ████▓▒░▒██▒   ░██▒ ██▓  ██▓ "
    puts "░ ▒░   ░  ░░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ░  ░ ▒▓▒  ▒▓▒ "
    puts "░  ░      ░░░▒░ ░ ░ ░ ░▒  ░ ░ ▒ ░▒░ ░  ░▒ ░ ▒░  ░ ▒ ▒░   ░ ▒ ▒░ ░  ░      ░ ░▒   ░▒  "
    puts "░      ░    ░░░ ░ ░ ░  ░  ░   ░  ░░ ░  ░░   ░ ░ ░ ░ ▒  ░ ░ ░ ▒  ░      ░    ░    ░   "
    puts "       ░      ░           ░   ░  ░  ░   ░         ░ ░      ░ ░         ░     ░    ░  "
    puts "                                                                             ░    ░  "
    blank_spacer(4)
    puts "Let's see if this will be a good trip or a bad trip. Press ENTER to find out..."
    blank_spacer(4)
    if [true, false].sample == true
        puts "Uh-oh. Looks like it's gonna be bad..."
        blank_spacer(2)
        rand(25..100).times do
            puts "#{Faker::Company.catch_phrase || Faker::Company.bs}"
            user_input = gets.chomp
            break if user_input == "stop the madness"
        end
    else
        puts "Great news! You've completed your MOD 1 project and have become enlightened!"
        blank_spacer(2)
    end
end

def chance_of_magic
    if rand(1..100) > 95
        magic_title
    else
        return
    end
end
## This method calls on my_mushrooms to return the mushrooms that you have harvested.
## You can pick a mushroom from there then it will puts out a message based on the
## effect of the mushroom. Effect is based on poison level and random instances.

def eat_a_mushroom
    blank_spacer(2)
    puts "So you want to eat a mushroom? Type one of the mushrooms below to try it:"
    blank_spacer(2)
    
    Mushroom.all.each {|mushroom| puts mushroom.name}
    blank_spacer(4)
    user_input = gets.chomp.downcase.titleize
    mushroom = Mushroom.find_by(name: user_input)
    # insert method for running chance of getting poisoned.
    chance_of_poison(mushroom)
    chance_of_magic
end

def more_commands?
    puts "Would you like to do anything else? Type YES to return to the menu or NO to exit the program"
    blank_spacer(2)
    user_input = gets.chomp.downcase
    if user_input == "yes"
        menu_options
    else
        return
    end
end

## this method identifies the user's menu input and loads the appropriate method.
## Stretch goal: give error message if unknown prompt is entered, allow user to exit program, return to menu after command is run
def menu_selection
    user_input = gets.chomp.downcase
    while user_input != "exit" do
        if user_input == "random mushroom"
            random_mushroom
            more_commands?
            break
        elsif user_input == "random area"
            random_area
            more_commands?
            break
        elsif user_input == "my trips"
            my_trips
            more_commands?
            break
        elsif user_input == "find new area"
            find_new_area
            more_commands?
            break
        elsif user_input == "find new mushroom"
            find_new_mushroom
            more_commands?
            break
        elsif user_input == "log trip"
            log_trip 
            more_commands?
            break
        elsif user_input == "update quantity"
            update_quantity
            more_commands?
            break
        elsif user_input == "delete trip"
            delete_trip
            more_commands?
            break
        elsif user_input == "my mushrooms"
            my_mushrooms
            more_commands?
            break
        elsif user_input == "secret menu"
            secret_menu
            more_commands?
            break
        elsif user_input == "eat a mushroom"
            eat_a_mushroom
            more_commands?
            break
        else
            blank_spacer(4)
            puts "I'm sorry, that isn't an available command. Please type MENU to see all"
            puts "available commands or type EXIT to exit the program."
            blank_spacer(4)
            user_input = gets.chomp.downcase
            if user_input == "menu"
                menu_options
            end
            break
        end
        break if user_input == "exit"
    end
end



## For Thursday:
###### Finalize control flow of each method and the run file  COMPLETE
###### Have #my_trips puts out the forage id for your forage trips. COMPLETE
###### Add NO input to stop delete COMPLETE
###### Fix "no user found" issue in #delete_trip COMPLETE
###### Need to clean up seeds so that mushroom and location names are removed each time they are entered. COMPLETE
###### Fix #find_new_mushroom, returns error with manually created location COMPLETE (issue was with AR search)
###### merge branch back with main COMPLETE
###### Created random location method COMPLETE
###### Also need to clean up the poisonous / edible options. COMPLETE
###### remove duplicates from #find_new_mushroom COMPLETE
###### Stretch method - #my_mushrooms lists out all of your mushrooms from all of your trips. COMPLETE

## Stretch method - Eat A Mushroom? Will puts out different things based on the edibility or poison content of the mushroom. 
## calls on #my_mushrooms to see which you have.    
## Stretch method - Add credits method
## Stretch method - Change #delete_trip to delete trips based on forage id #.
## This will allow user to delete records in bulk


## FOR FRIDAY


###### Simplify eat a mushroom so that you can either type in a mushroom name or random and you will eat that mushroom. COMPLETE
###### then you write a helper method to determine the percentage change of being poisoned or otherwise. COMPLETE
# Final test of all methods
# record video detailing my app
