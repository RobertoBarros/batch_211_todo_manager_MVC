class TaskRepository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  # return an array
  def all
    @tasks
  end

  # return a Task
  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end