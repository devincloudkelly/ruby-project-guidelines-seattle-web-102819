

## Puts out greeting when starting the app
def welcome
    puts ""
    puts ""
    puts ""
    puts ""
    puts "             Welcome to the Mushroom Foraging app!"
    puts "    You can use this app to find mushrooms to forage, places"
    puts "        to forage, and log your recent foraging trips."
    puts ""
    puts "                    Hit ENTER to continue"
    puts ""
    puts ""
    puts ""
    puts ""
    user_input = gets.chomp
end

def menu_options
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
    puts ""
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


def random_mushroom
    mushroom = Mushroom.all.sample
    puts ""
    puts ""
    puts ""
    puts "  - The #{mushroom.name} Mushroom - ".upcase
    puts ""
    puts "    This mushroom is primarily found in #{mushroom.habitat}s."
    puts "  It is #{mushroom.edible? ? "edible" : "NOT edible"} and it is #{mushroom.poisonous? ? "POISONOUS." : "not poisonous."}"
    puts "  Go foraging #{mushroom.days_after_rain_til_growth} day(s) after rainfall for the"
    puts "  best chance to find the #{mushroom.name} mushroom."
    puts ""
    puts ""
    puts ""
    return ""
    # t.string "name"
    # t.string "habitat"
    # t.boolean "edible?"
    # t.boolean "poisonous?"
    # t.integer "days_after_rain_til_growth"
end



## For Wednesday morning. You are starting work in the development branch. Your master branch has been pushed.
## You will add a user class, then add the user_id to the join table.  ???
## User class will have many forages           ??????????????
## decide whether or not to add a user class?
      
def my_trips
    puts ""
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
        # puts forage.id
        # puts forage.mushroom_id
        # puts forage.location_id
        # puts forage.quantity_harvested
        # puts forage.user_id
        puts "On this trip you picked #{forage.quantity_harvested} #{mushroom.name} mushroom(s)."
        puts "They were found in the #{location.terrain} region of #{location.name}."
        puts "This trip occurred on #{forage.created_at}"
        end
        puts ""
        puts ""
        puts ""
        if forage.length < 5
            puts "You've only made #{forage.length} foraging trips. Get outside and pick more mushrooms!"
        end
        puts ""
        puts ""
        puts ""
        puts ""
    end
end

def menu_selection
    user_input = gets.chomp.downcase
    if user_input == "random mushroom"
        random_mushroom
    elsif user_input == "my trips"
        my_trips
    end

end