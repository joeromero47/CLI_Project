class RM_Character
  attr_accessor :name, :url, :status, :species, :id
  @@all = []

  def initialize(name, url, status, species, id)
      
    @name = name 
    @url = url
    @status = status 
    @species = species
    @id = id
    @@all << self 
    end 

  def self.all
    @@all 
  end 
    
  def self.find_by_id(id)
    all.find{|character| character.id == id} 
            #binding.pry 
  end 
end 