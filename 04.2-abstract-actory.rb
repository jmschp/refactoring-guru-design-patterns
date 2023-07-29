# rubocop:disable Naming/FileName, Style/FrozenStringLiteralComment, Style/Documentation

# This will our abstract factory interface
class DatabaseFactory
  # Abstract method to create a connect object
  def create_connection
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Abstract method to create a query object
  def create_query(table, args)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Each product variant has its own factory with concrete implementations
class MySqlFactory < DatabaseFactory
  def create_connection
    MySqlConnection.new
  end

  def create_query(table, args)
    MySqlQuery.new(table, args)
  end
end

class PostgresFactory < DatabaseFactory
  def create_connection
    PostgresConnection.new
  end

  def create_query(table, args)
    PostgresQuery.new(table, args)
  end
end

# We have abstract products for each product
class DatabaseConnection
  def connect
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class DatabaseQuery
  attr_reader :table, :args

  def initialize(table, args)
    @table = table
    @args = args
  end

  def execute_query(query)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Here we have our product variant implementations, that inherit from the abstract product.
class MySqlConnection < DatabaseConnection
  def connect
    puts 'Connect to a MySQL database'
  end
end

class MySqlQuery < DatabaseQuery
  def execute_query
    puts 'Executing query in MySQL'
    conditions = args.map { |k, i| "#{k} = #{i}" }
    puts "SELECT * FROM #{table} WHERE #{conditions.join(' AND ')};"
  end
end

class PostgresConnection < DatabaseConnection
  def connect
    puts 'Connect to a PostgreSQL database'
  end
end

class PostgresQuery < DatabaseQuery
  def execute_query
    puts 'Executing query in PostgreSQL'
    conditions = args.map { |k, i| "#{k} = #{i}" }
    puts "SELECT * FROM #{table} WHERE #{conditions.join(' AND ')};"
  end
end

# The client can work with any factory
class Application
  attr_reader :database_factory

  def initialize(database_factory)
    @database_factory = database_factory
  end

  def create_and_execute(table, **args)
    connection = database_factory.create_connection
    query = database_factory.create_query(table, args)

    connection.connect
    query.execute_query
  end
end

# Usage with MySQL
mysql_factory = MySqlFactory.new
Application.new(mysql_factory).create_and_execute('cars', brand: 'Ferrari', model: '599', color: 'red')

# Usage with PostgreSQL
postgresql_factory = PostgresFactory.new
Application.new(postgresql_factory).create_and_execute('cars', brand: 'Ferrari', model: '599', color: 'red')

# rubocop:enable Naming/FileName, Style/FrozenStringLiteralComment, Style/Documentation
