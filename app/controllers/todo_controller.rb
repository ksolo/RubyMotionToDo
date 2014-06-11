class TodoController < UIViewController
  extend IB

  outlet :nameField, UITextField
  outlet :descriptionField, UITextView

  attr_accessor :todo

  # UITextFieldDelegate
  def textFieldDidEndEditing(textField)
    @todo ||= Todo.new(nil, nil)
    @todo.name = textField.text
    textField.resignFirstResponder
  end

  # UITextViewDelegate

end