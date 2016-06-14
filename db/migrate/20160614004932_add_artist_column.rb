class AddArtistColumn < ActiveRecord::Migration
  def change
    change_table :tracks do |t|
      t.rename :author, :artist
      t.string :author
    end
  end
end
