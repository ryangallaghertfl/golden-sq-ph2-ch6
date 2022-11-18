# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface
The interface of a class includes:

* The name of the class.
* The design of its initializer and the parameters it takes.
* The design of its public methods, including:
    * Their names and purposes
    * What parameters they take and the data types.
    * What they return and that data type
    * Any other side effects they might have.

```ruby

class MusicTracker
def initialize #takes no arguments
  @music_list = [] #an array of hash objects
end

def add(title, artist)
#title is a string
#artist is a string
#title and artist are values within a hash
end

def list_tracks() #takes no arguments
#returns an array of hash objects
end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
musictracker = MusicTracker.new
musictracker.list_tracks => []

# 2
musictracker = MusicTracker.new
musictracker.add("Sorrow", "David Bowie")
musictracker.list_tracks => [{"Title" => "Sorrow", "Artist" => "David Bowie"}]

#3 
musictracker = MusicTracker.new
musictracker.add("Sorrow", "David Bowie")
musictracker.add("Heroes", "David Bowie")
musictracker.list_tracks => [{"Title" => "Sorrow", "Artist" => "David Bowie"}, {"Title" => "Heroes", "Artist" => "David Bowie"}]

#4
musictracker = MusicTracker.new
musictracker.add("", "David Bowie") => "Fail. Title cannot be empty string."
musictracker.list_tracks => []

#5
musictracker = MusicTracker.new
musictracker.add("TVC-15", "") => "Fail. Artist cannot be empty string."
musictracker.list_tracks => []



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._