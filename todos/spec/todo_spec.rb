require './todo.rb'

describe 'Todos app' do

  before(:each) { Todo.class_variable_set :@@list, [] }

  it 'should initialise' do
    todo = Todo.new('Remember the Milk', '18 November 2016')
    expect(todo.title).to eq 'Remember the Milk'
    expect(todo.due_date).to eq '18 November 2016'
  end

  it 'should initialise' do
    todo = Todo.new('Remember the Milk')
    expect(todo.title).to eq 'Remember the Milk'
    expect(todo.due_date).to eq Date.today.strftime('%d %B %Y')
  end

  it 'should return an array of todos' do
    Todo.new('Remember the Milk', '18 November 2016')
    expect(Todo.all.class).to eq Array
    expect(Todo.last).to eq ['Remember the Milk', '18 November 2016']
    Todo.new('Second todo', '18 November 2016')
    expect(Todo.all.class).to eq Array
    expect(Todo.last).to eq ['Second todo', '18 November 2016']
  end

  it 'should return the last todo from the list' do
    Todo.new('First', '18 November 2016')
    Todo.new('Remember the Milk', '18 November 2016')
    Todo.new('Last', '18 November 2016')
    expect(Todo.last).to eq ['Last', '18 November 2016']
  end

  it 'should return the todos that contain words' do
    todo = Todo.new('First todo', '18 November 2016')
    todo = Todo.new('Remember the Milk', '18 November 2016')
    todo = Todo.new('Last todo', '18 November 2016')
    expect(Todo.find contains: 'todo').to eq [['First todo', '18 November 2016'], ['Last todo', '18 November 2016']]
    expect(Todo.find exactly: 'Remember the Milk').to eq [['Remember the Milk', '18 November 2016']]
  end

  it 'should return the todos that contain dates' do
    todo = Todo.new('First todo', '18 November 2016')
    todo = Todo.new('Remember the Milk', '19 November 2016')
    todo = Todo.new('Last todo', '18 November 2016')
    expect(Todo.find date_contains: '18').to eq [['First todo', '18 November 2016'], ['Last todo', '18 November 2016']]
    expect(Todo.find date_exactly: '19 November 2016').to eq [['Remember the Milk', '19 November 2016']]
  end
  
  it 'should set and get the due date' do
    todo = Todo.new('Test something', '18 November 2016')
    expect(todo.due_date).to eq '18 November 2016'
    todo.due_date = '20 November 2016'
    expect(todo.due_date).to eq '20 November 2016'
  end

  it 'should set and get the title' do
    todo = Todo.new('Test something', '18 November 2016')
    expect(todo.title).to eq 'Test something'
    todo.title = 'New todo'
    expect(todo.title).to eq 'New todo'
  end
end