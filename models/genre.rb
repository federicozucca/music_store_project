require('pg')
require_relative('../db/sql_runner')


class Genre
  attr_accessor :type
  attr_reader :id

  def initialize(options)
    @type = options['type']
    @id = options['id'].to_i if options['id'] 
  end

  def save()
    sql = "INSERT INTO genres (type) VALUES ('#{@type}') returning *;"
    result = SqlRunner.run( sql )
    @id = result[0]['id'].to_i

  end

  def delete
    return unless @id
    sql = "DELETE FROM genres WHERE id = '#{@id}'"
    result = SqlRunner.run( sql )
  end

  def self.update (options)
   sql = "UPDATE genres SET
         type='#{options['type']}'
         WHERE id=#{options['id']}"
    result = SqlRunner.run( sql )
  end


  def self.delete_all
    sql = "DELETE FROM genres;"
    genres = SqlRunner.run( sql )
    return genres.map { |genre| Genre.new(genre) }
  end

  def self.delete(id)
    sql = "DELETE FROM genres WHERE id=#{id}"
    SqlRunner.run(sql)
  end

  def self.all
   sql = "SELECT * FROM genres;"
   genre = SqlRunner.run( sql )
   return genre.map { |genre| Genre.new(genre) }
  end


  def self.find (id)

    sql = "SELECT * FROM genres WHERE id=#{id}"
    genre = SqlRunner.run(sql).first
    return Genre.new(genre)
  end

  def albums
    sql = "SELECT * from albums where genre_id=#{@id};"
    albums = SqlRunner.run( sql )
    return albums.map {|album| Album.new(album)}
  end

end