require('pg')
require_relative('../db/sql_runner')
require_relative('artist')

class Album
  attr_accessor :title, :genre, :artist_id, :price 

  attr_reader :id

  def initialize( options )
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist_id, price) VALUES ('#{@title}', '#{@genre}', #{@artist_id}, #{@price}) returning *;"
    result = SqlRunner.run( sql )
    @id = result[0]['id'].to_i
  end

  def delete
    return unless @id
    sql = "DELETE FROM albums WHERE id = '#{@id}'"
    result = SqlRunner.run( sql )
  end

  def self.update (options)
    sql = "UPDATE albums SET
          title='#{options['title']}',
          genre='#{options['genre']}',
          artist_id='#{options['artist_id']}',
          price=#{options['price']}
          WHERE id=#{options['id']}"
    result = SqlRunner.run( sql )
  end


  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def self.delete(id)
    sql = "DELETE FROM albums WHERE id=#{id}"
    SqlRunner.run(sql)
  end

  def self.all
   sql = "SELECT * FROM albums;"
   albums = SqlRunner.run( sql )
   return albums.map { |album| Album.new(album) }
  end

  def artist
    sql = "SELECT * FROM artists WHERE id=#{@artist_id}"
    first_artist_hash = SqlRunner.run(sql).first
    return Artist.new(first_artist_hash)
  end

  def self.find (id)

    sql = "SELECT * FROM albums WHERE id=#{id}"
    album = SqlRunner.run(sql).first
    return Album.new(album)
  end


end
