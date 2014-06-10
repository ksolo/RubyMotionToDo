class ToDosController < UITableViewController

  def viewDidLoad
    super
    self.title = "ToDos"
    self.tableView.registerClass(UITableViewCell, forCellReuseIdentifier: "ToDoCell")
    @todos = [1, 2, 3]
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @todos.length
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier("ToDoCell", forIndexPath: indexPath)
    unless cell
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "ToDoCell")
    end
    cell.textLabel.text = "Hello"
    cell
  end

end
