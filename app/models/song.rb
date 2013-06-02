class Song < ActiveRecord::Base
  attr_accessible :bassC, :name, :trebleBb, :trebleC

  def self.populate
    files = Dir.glob("app/assets/pdfs/*").map{|f| File.basename(f)}
    songs = {}
    files.map{|f| f.sub(/ \(.*\)_Tango.pdf/, "").downcase}.uniq.each{|s| songs[s]={}}
    files.each{|f| name=f.sub(/ \(.*\)_Tango.pdf/, "").downcase; type=f.sub(/.*\(/,'').sub(/\).*/,'').downcase; songs[name][type]=f}
    songs.each{|name, files| Song.new(:name=>name, :trebleC=>files['c'], :bassC=>files['bass clef'], :trebleBb=>files['bb']).save!}
  end
end
