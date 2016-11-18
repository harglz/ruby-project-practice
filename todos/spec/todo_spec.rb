require './todo.rb'

describe 'Todos app' do
  
  it 'should initialise' do
    todo = Todo.new('Remember the Milk', '18 November 2016')
    expect(todo.title).to eq 'Remember the Milk'
    expect(todo.due_date.class).to eq Date
  end

  it 'should return an array of todos' do
    Todo.new('Remember the Milk', '18 November 2016')
    expect(Todo.all.class).to eq Array
    expect(Todo.all.last).to eq 'Remember the Milk'
    Todo.new('Second todo', '18 November 2016')
    expect(Todo.all.class).to eq Array
    expect(Todo.all.last).to eq 'Second todo'
  end

  it 'should return the last todo from the list' do
    Todo.new('First', '18 November 2016')
    Todo.new('Remember the Milk', '18 November 2016')
    Todo.new('Last', '18 November 2016')
    expect(Todo.last.class).to eq Hash
  end

  it 'should return the todos that contain words' do
    todo = Todo.new('First todo', '18 November 2016')
    todo = Todo.new('Remember the Milk', '18 November 2016')
    todo = Todo.new('Last todo', '18 November 2016')
    expect(Todo.find contains: 'todo').to eq ['First todo', 'Last todo']
    expect(Todo.find exactly: 'Remember the Milk').to eq ['Remember the Milk']
  end
  
  it 'should set and get the due date' do
    todo = Todo.new('Test something', '18 November 2016')
    expect(todo.due_date).to eq '18 November 2016'
    todo.due_date = '20 November 2016'
    expect(todo.due_date).to eq '20 November 2016'
  end

  it 'should set and get the due date' do
    todo = Todo.new('Test something', '18 November 2016')
    expect(todo.title).to eq 'Test something'
    todo.title = 'New todo'
    expect(todo.title).to eq 'New todo'
  end
end