class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |p|
  		p.string :photo
  end
end
end
