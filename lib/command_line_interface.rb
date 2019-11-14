
## helper method to create x number of blank lines based on your argument
def blank_spacer(num)
    num.times do
        puts ""
    end
end

## This helper method advises if the user input is invalid and returns an error message
# def input_invalid(required_input)
    
# end

## Puts out greeting when starting the app
## Stretch goal: create an ASCII block title
def welcome
    blank_spacer(4)                                                                                                             
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
    puts "  RANDOM MUSHROOM   - Expand your knowledge. This generates a random mushroom instance."
    puts ""
    puts "  MY TRIPS          - Shows you the results of your recent foraging trips. See"
    puts "                      how many mushrooms were collected, what type and where."
    puts ""
    # puts "  FIND NEW AREA     - Enter the name of a mushroom you'd like to harvest and"
    # puts "                      get a list of all the areas where this mushroom is found."
    # puts ""
    puts "  FIND NEW MUSHROOM - Enter the name of an area you'd like to forage in to "
    puts "                      get a list of all the mushrooms found there."
    puts ""
    puts "  LOG TRIP          - Log the results of your recent foraging trip."
    puts ""
    puts "  UPDATE QUANTITY   - Update the quantity of mushrooms harvested in your last entry."
    puts ""
    puts "  DELETE TRIP       - Delete a recent foraging trip."
    puts ""
    # puts "  LOCAL EDIBLES     - Find edible mushrooms within X distance of you."
    # puts ""
    puts "  EXIT              - Exits out of the program"
    puts "###############################################################"
    puts ""
    menu_selection
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


## This method prompts a user to type in a location, then returns all of the mushrooms
## that have been foraged in that area.
## come back to this
def find_new_mushroom
    blank_spacer(4)
    puts "Enter the name of a location to discover new mushrooms in that area."
    user_input = gets.chomp.downcase
    location = Location.find_by(name: "#{user_input.titleize}")
    # if location != nil
        location_forages = Forage.find_by(location_id: location.id)
        location_forages.each do |forage|
            puts forage.mushroom_id
        end
    # else 
    #     puts "That location name is not valid. Returning you to the MENU"
    #     return
    # end
end

def log_trip
    blank_spacer(4)
    puts "Let's log your recent foraging trip. Please enter your full name"
    user_name = gets.chomp.downcase.titleize
    user = User.find_or_create_by(name: user_name) {|user| user.age = rand(15..78)}
    puts user.name
    blank_spacer(2)
    puts "Thank you #{user.name}. Now enter the name of the location where you foraged."
    loc_input = gets.chomp.downcase.titleize
    location = Location.find_or_create_by(name: loc_input) {|location| location.terrain = ["hilly", "flat", "mountainous"].sample}
    puts location.name
    blank_spacer(2)
    puts "Thank you. Which mushroom did you forage?"
    mush_input = gets.chomp.downcase.titleize
    mushroom = Mushroom.find_or_create_by(name: mush_input)
    puts mushroom.name
    blank_spacer(2)
    puts "Great - lastly, how many #{mushroom.name} mushrooms did you harvest on this trip?"
    qty_input = gets.chomp
    forage = Forage.create(mushroom_id: mushroom.id, location_id: location.id, quantity_harvested: qty_input, user_id: user.id)
    puts forage.mushroom_id
    blank_spacer(6)
    puts "Awesome! Here are the details of your recent foraging trip:"
    puts "-----------------------------------------------------------"
    blank_spacer(2)
    # puts "The mushroom ID is #{forage.mushroom_id}"
    # puts "The forage location ID is #{forage.location_id}"
    # puts "The forage user ID is #{user.id}"
    # puts "The quantity harvested is #{forage.quantity_harvested}"
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
    # binding.pry
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
        else
            blank_spacer(4)
            puts "I'm sorry, that isn't an available command. Please type a command from the list"
            puts "or type EXIT to exit the program."
            blank_spacer(4)
        end
        break if user_input == "exit"
    end
end

## For Thursday:
###### Finalize control flow of each method and the run file  COMPLETE
###### Have #my_trips puts out the forage id for your forage trips. COMPLETE
## Then change #delete_trip to delete trips based on forage id #.
## This will allow user to delete records in bulk
###### Add NO input to stop delete COMPLETE
###### Fix "no user found" issue in #delete_trip COMPLETE
## Need to clean up seeds so that mushroom and location names are removed each time they are entered.
## Also need to clean up the poisonous / edible options. Pick one or the other
## Stretch  method - is it poisonous?
## merge branch back with main