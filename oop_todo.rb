require_relative "list"
require_relative "task"

# Create list
list = List.new

def toggle_complete
  if :complete == "false"
    complete == "true"
  elsif :complete == "true"
    complete == "false"
    end
end

def number_of_incomplete_tasks
  lists.each do 
  if :complete == "false"
    count
  end
end

  # Create tasks and add them to the list
  list.add_task(Task.new(
                        name:"Feed the cat", 
                        complete: "false"))
  list.add_task(Task.new(
                         name: "Take out trash", 
                         complete: "true"))
  list.add_task(Task.new(
                         name: "Mow the lawn", 
                         complete: "false"))

  

  # Print out the second task in the list
  puts "Second task:"
  puts list.tasks[1].name
  puts "---------"

  # Get an array containing the names of all incomplete tasks from the list
  puts "Incomplete Tasks:"
  puts list.incomplete_task_names
  puts "--------"


  # Mark the first task from the list as complete
  list.tasks[0].complete!

  # Print out the incomplete tasks again
  puts "Incomplete Tasks:"
  puts list.incomplete_task_names
