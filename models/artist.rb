require('pg')
require_relative('../db/sql_runner')
require_relative('album')

class Artist
  attr_accessor :name
  attr_reader :id, :logo

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i if options['id']
    @logo = options['logo'] 
  end

  def save()
    sql = "INSERT INTO artists (name,logo) VALUES ('#{@name}','#{ @logo }') returning *;"
    result = SqlRunner.run( sql )
    @id = result[0]['id'].to_i

  end

  def delete
    return unless @id
    sql = "DELETE FROM artists WHERE id = '#{@id}'"
    result = SqlRunner.run( sql )
  end

  def self.update (options)
   sql = "UPDATE artists SET
         name='#{options['name']}'
         logo='#{options['logo']}'
         WHERE id=#{options['id']}"
    result = SqlRunner.run( sql )
  end


  def self.delete_all
    sql = "DELETE FROM artists;"
    artists = SqlRunner.run( sql )
    return artists.map { |artist| Artist.new(artist) }
  end

  def self.delete(id)
    sql = "DELETE FROM artists WHERE id=#{id}"
    SqlRunner.run(sql)
  end

  def self.all
   sql = "SELECT * FROM artists;"
   artists = SqlRunner.run( sql )
   return artists.map { |artist| Artist.new(artist) }
  end

  def albums
    sql = "SELECT * from albums where artist_id=#{@id};"
    albums = SqlRunner.run( sql )
    return albums.map {|album| Album.new(album)}
  end

  def self.find (id)

    sql = "SELECT * FROM artists WHERE id=#{id}"
    artist = SqlRunner.run(sql).first
    return Artist.new(artist)
  end

  def self.count
    artists = self.all
    return artists.length
    
   end

end