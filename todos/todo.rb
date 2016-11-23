require 'date'

class Todo
  attr_accessor :title
  attr_reader :due_date

  @@list = []
  @@API = []

  def initialize(title, due_date = Date.today.strftime('%d %B %Y'))
    @title = title
    @due_date = due_date
    date(@due_date)
    @@list << [@title, @due_date]
  end

  def due_date=(due_date)
    date(due_date)
  end

  def self.all
    return @@list
  end

  def self.last
    return @@list.last
  end

  def self.find(params)
    print_list = []
    if params[:contains] 
      search_term = params[:contains]
      @@list.each do |title, due_date|
        if title.include? search_term
          print_list << [title, due_date]
        end
      end
    elsif params[:exactly]
      string = params[:exactly]
      @@list.each do |title, due_date|
        if string == title
          print_list << [title, due_date]
        end
      end
    elsif params[:date_contains]
      search_term = params[:date_contains]
      @@list.each do |title, due_date|
        if due_date.include? search_term
          print_list << [title, due_date]
        end
      end
    elsif params[:date_exactly]
      date = params[:date_exactly]
      @@list.each do |title, due_date|
        if due_date.include? date
          print_list << [title, due_date]
        end
      end
    end
    print_list
  end

  def self.sync
    @@API.each do |todo|
      if self.find(exactly: todo[0])
        @@list << todo 
      end
    @@API = []
    end
    @@list.each do |todo|
    @@API << todo
    end
    @@API.sort!
    @@list.sort!
  end

  private

  def date(due_date)
    date = Date.parse(due_date)
    @due_date = date.strftime('%d %B %Y')
  end
end