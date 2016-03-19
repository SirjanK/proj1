# Q0: Why is this error being thrown?
There is no Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon are appearing from the seeds.rb file. We are assigning specific names like Charmander and Squirtle.
Also we have a random level from 1 to 20.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line is creating and displaying a button with text Throw a Pokeball! onto the html file.
capture_path(id: @pokemon) is calling the capture function in the Pokemon Controller with the hash
id: @pokemon (getting the current pokemon displayed). This will thus allow that current pokemon to
be captured through the create method.

# Question 3: What would you name your own Pokemon?
Stegochu (Stegosaurus variation)

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed current_trainer into redirect_to. I'm not entirely sure why it worked (guess and check), but
I'm assuming it uses the id of the trainer to redirect to the trainer's profile page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
As the specs said, I looked into applications.html.erb. I saw that it uses messages.html.erb to
display error messages that may have occured.

# Give us feedback on the project and decal below!
The decal has been very fun so far. I am excited to start on the group project.

The project was fun as well, but I ran into problems at the end. I got a weird error after
everything had been working fine saying the table pokemons does not exist. I'm guessing something
went wrong with my relations, but that's weird because everything had been working up to a certain point
and I could not pinpoint when the issue was first raised.
The project did help me understand the process from beginning to end though of making a rails project.

# Extra credit: Link your Heroku deployed app
