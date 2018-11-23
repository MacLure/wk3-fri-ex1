class Task

    def initialize(description, due_date)
        @description = description
        @due_date = due_date
    end

    def description
        return @description
    end

    def due_date
        return @due_date
    end

end

class ToDoList

    @@tasks = []

    def initialize

    end

    def self.tasks
        return @@tasks
    end

    def self.add_task(task)
        @@tasks.push(task)
    end

end


eat = Task.new("eat food", "tomorrow")
drink = Task.new("eat liquids", "today")
go_to_sleep = Task.new("go to bed", "tonight")

ToDoList.add_task(eat)
ToDoList.add_task(go_to_sleep)
ToDoList.add_task(drink)

puts ToDoList.tasks