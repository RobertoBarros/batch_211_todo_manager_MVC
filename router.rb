class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_action
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_action
    puts "-" * 20
    puts "What do you want to do?"
    puts "1 - Display tasks"
    puts "2 - Create new task"
    puts "3 - Mark task as done"
    puts "4 - Remove task"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    end
  end

end