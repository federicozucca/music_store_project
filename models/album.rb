require('pg')
require_relative('../db/sql_runner')
require_relative('artist')
require_relative('genre')

class Album
  attr_accessor :title, :genre_id, :artist_id, :price, :quantity, :quantity_sold

  attr_reader :id

  def initialize( options )
    @title = options['title']
    @genre_id = options['genre_id']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id']
    @price = options['price'].to_i
    @quantity= options['quantity'].to_i
    @quantity_sold= options['quantity_sold'].to_i
  end

  

  def save()
    sql = "INSERT INTO albums (title, genre_id, artist_id, price, quantity,quantity_sold) VALUES ('#{@title}', '#{@genre_id}', #{@artist_id}, #{@price}, #{@quantity}, #{@quantity_sold}) returning *;"
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
    genre_id='#{options['genre_id']}',
    artist_id='#{options['artist_id']}',
    price=#{options['price']},
    quantity=#{options['quantity']},
    quantity_sold=#{options['quantity_sold']}
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

def genre
  sql = "SELECT * FROM genres WHERE id=#{@genre_id}"
  first_artist_hash = SqlRunner.run(sql).first
  return Genre.new(first_artist_hash)
end

def self.find (id)

  sql = "SELECT * FROM albums WHERE id=#{id}"
  album = SqlRunner.run(sql).first
  return Album.new(album)
end

def stock_level
  return "low" if(@quantity <= 10 && @quantity > 0);
  return "medium" if(@quantity > 10 && @quantity <= 100);
  return "high" if(@quantity > 100);
  return "out of stock" if(@quantity == 0)
end

def self.count
  albums = self.all
  counter = 0 
  for album in albums
    counter += album.quantity
  end
  return counter
end

def buy(albums_bought) 
  @quantity += albums_bought 
  sql = "UPDATE albums
        SET quantity=#{@quantity}
        WHERE id=#{@id}; "
  SqlRunner.run(sql)
end

def sell(albums_sold) 
  @quantity -= albums_sold 
  sql = "UPDATE albums
        SET quantity=#{@quantity}
        WHERE id=#{@id}; "
  SqlRunner.run(sql)
end

def 

end


end
