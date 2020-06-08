class Api 
  URL = "https://rickandmortyapi.com/api/character/"

  def self.get_characters
    response = RestClient.get(URL)
    data = JSON.parse(response.body)
    data["results"].each do |character|
    #binding.pry 
      name = character['name']
      url = character['url']
      status = character['status']
      species = character['species']
      id = character['id']
      RM_Character.new(name, url, status, species, id)
      end 
   end 
end 