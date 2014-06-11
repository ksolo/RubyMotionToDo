class ToDosController < UITableViewController

  # Overrides
  def viewDidLoad
    super

    @todos = [ToDo.new("Hate on Holacracy", nil), ToDo.new("Pack for NC", nil), ToDo.new("Something", nil)]

    self.title = "ToDos"
    self.tableView.registerClass(UITableViewCell, forCellReuseIdentifier: "ToDoCell")
    self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAdd ,target: self, action: "add_item")
  end

  # DataSource Delegate Methods
  def tableView(tableView, numberOfRowsInSection: section)
    @todos.length
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier("ToDoCell", forIndexPath: indexPath)
    unless cell
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "ToDoCell")
    end
    cell.textLabel.text = @todos[indexPath.row].name
    cell
  end

  # Actions
  def add_item
    puts "I was pressed to add things!"
  end

end
