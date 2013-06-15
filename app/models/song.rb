class Song < ActiveRecord::Base
  attr_accessible :bassC, :name, :trebleBb, :trebleC
  has_and_belongs_to_many :jams

  def to_s
    @name
  end

  def times_played
    self.jams.where("date < (?)", Time.now).length
  end

  def self.populate
    files = Dir.glob("app/assets/pdfs/*").map{|f| File.basename(f)}
    songs = {}
    files.map{|f| f.sub(/ \(.*\)_[A-Za-z]*.pdf/, "").downcase}.uniq.each{|s| songs[s]={}}
    files.each{|f| name=f.sub(/ \(.*\)_[A-Za-z]*.pdf/, "").downcase; type=f.sub(/.*\(([^()]*)\)_[A-Za-z]*.pdf/,"\\1").downcase; songs[name][type]=f}
    songs.each{|name, files| Song.find_or_create_by_name(:name=>name, :trebleC=>files['c'], :bassC=>files['bass clef'], :trebleBb=>files['bb']).save!}
    0
  end
end
