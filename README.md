#Scenario Generator

Pretty simple. Install the gems. Run the server. Visit the domain.

Currently supported games:
* Minecraft
* Dwarf Fortress
* Fallout: New Vegas
* Skyrim
* Crusader Kings 2
* Civilization 5
* X-Rebirth

You can add to the generator source list in config/initializers/constants.rb
Just add to the hash in the correct format and give it a background at assets/images/<game_name>.png and it will automatically appear in the index and the generator will work.

Pull requests will be vetted for spelling and grammar. Feel free to correct me if I've messed either up.
Please remember to increment the counter in the readme.