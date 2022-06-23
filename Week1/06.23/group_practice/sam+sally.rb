# Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.

recipe_names = ["strawberry cheesecake", "omelet", "banana bread", "chicken carbonara", "lasagna", "pot pie", "Sam's Signature Hummus", "cobb salad", "matzoh ball soup", "brown bread", "rice pudding"]

# Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.

languages = ["English", "French", "Spanish", "Chinese", "Japanese", "Arabic"]

# If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.

if recipe_names.length > 10 && languages.length > 5
  puts "Sam and Sally should date"
else
  puts "Sam and Sally should not date"
end

# If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.

if recipe_names.include?("crepes") || languages.include?("Vietnamese")
  puts "Sam and Sally should marry"
else
  puts "Sam and Sally should not marry"
end