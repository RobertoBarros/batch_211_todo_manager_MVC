require_relative 'tasks_view'

class TasksController

  def initialize(repository)
    @view = TasksView.new
    @repository = repository
  end

  def list
    display_tasks
  end

  def create
    # Ask user the description
    description = @view.ask_description
    # Create a new Task with description
    task = Task.new(description)
    # Add Task to repository
    @repository.add(task)
  end

  def mark_as_done
    # List all tasks
    display_tasks
    # Ask user task index
    index = @view.ask_index
    # Find task by index
    task = @repository.find(index)
    # mark task as done
    task.mark_as_done!
  end

  def destroy
    # List all tasks
    display_tasks
    # ask task index
    index = @view.ask_index
    # remove from repository by index
    @repository.remove(index)
  end

  private

  def display_tasks
    # Fetch all tasks from repository
    tasks = @repository.all
    # send tasks to view
    @view.display(tasks)
  end


end