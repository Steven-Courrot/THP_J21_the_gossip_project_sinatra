require 'csv'

class Gossip 
  attr_accessor :author, :content

def initialize(author, content)

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << ["Mon super auteur", "Ma super description"]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end
end

def self.find(id)
  return Gossip.all[id]
end

end


