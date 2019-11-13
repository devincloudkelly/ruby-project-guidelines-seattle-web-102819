

## Puts out greeting when starting the app
def welcome
    puts "Welcome to the Mushroom Foraging app!"
    user_input = gets.chomp
end

def menu_options
    puts "  To get started, choose from one of the following options"
    puts "################################################################################"
    puts ""
    puts "  RANDOM MUSHROOM   - Expand your knowledge. This generates a random mushroom instance."
    puts ""
    puts "  MY TRIPS          - Shows you the results of your recent foraging trip. See"
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
