require 'sqlite3'
require './spice_functions'
require ',/cuisine_data'


# 1. Create tables
#   a.ingredients
#   b.shelves
#   c.cuisines
#   d.trinities?
table_structure = {
  :'ingredients' => [
    "type VARCHAR(255),",
    "shelf_id INTEGER,",
    "FOREIGN KEY (shelf_id) REFERENCES shelves(id)"
    ],
  :'shelves' => [],
  :'cuisines' => [
    "father VARCHAR(255),",
    "son VARCHAR(255),",
    "holy_ghost VARCHAR(255)"
    ],
  :'cuisine_ingredients' => [
    "cuisine_id INTEGER,",
    "ingredient_id INTEGER,",
    "FOREIGN KEY (cuisine_id) REFERENCES cuisines(id)",
    "FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)"
  ]
}
databaisse = SQLite3::Database.new("spice_manager.db"){include Kitchen}
# databaisse.results_as_hash = true
#like bouillabaisse get it?



#make all the tables
startup_tables = hash_to_table(table_structure)
startup_tables.each do |cmd|
  databaisse.execute(cmd)
end

#consider new file cuisine data which holds
#-table structure
#-cuisine list


#populate cuisine table


#loading screen
#-lists all produce
#-asks whether things are still good

print "Welcome to Spice Manager!"

until choice == "E"
  choice = menu_template
  case choice
    when "V"
      choice = menu_template(["Ingredients","Shelves","Cuisines","Main Menu"])
    when "G"
      choice = menu_template(["How can I use this?","What can I make with what's here?","Main Menu"])
    when "A"
      choice = menu_template(["","Main Menu"])
    when "R"
    when "F"
    when "E"
    else
      puts "ERROR"
      next
  end
end

#main screen options for: 
#-view all ingredients
#-view contents of shelf
#-find an ingredient
#-view trinity
#-add ingredient
#-add shelf
#-add cuisine
#-remove ingredient
#-remove shelf
#-remove cuisine
#-what can I make with what I have?
    #-shows where each of the things are
#-what do I need to use this?




#goodbye screen
#Remember to clean out your perishables regularly!




















# new_shelf(databaisse,"Top shelf","pantry")
# # databaisse.execute(top_pantry)
# # p top_pantry

# new_stock(databaisse,"Thyme","Herb","1")
# # databaisse.execute(thyme)
# # p thyme

# new_cuisine(databaisse,"Greek","lemon","olive oil","oregano")
# # databaisse.execute(greek)
# # p greek

# food = databaisse.execute("SELECT * FROM ingredients")
# puts food





# 5.Functions to compare/analyze
#   a. What can I make with what's here?
      # i.input:ingredient(s table), cuisines table
      #   -iterate through cuisines
      #   -compare all ingredients to trinities
      #   -on complete match store cuisine name in hash 
      #     -with value as array of ingredients
      #   -return hash
      # ii.output:hash
#   b. What do I need In order to use x?
      # i.input:ingredient.name, cuisine table
      #   -run what can I make with whats here for ingredient
      #   -store returned hash in "have all things" 
      #   -iterate through cuisines
      #   -compare keys from HaTh on match continue
      #   -else compare ingredient to trinities
      #   -on match store name of cuisine as key 
      #     in hash ("don't have all the things")
      #   -with value as array of all 
      #     non-ingrediant.name items
      #   -combine hashes with deliniation of results
      # ii.output: return hash





