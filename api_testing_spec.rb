require 'httparty'
require 'json'

class DogAPIPractice
  include HTTParty
  base_uri 'https://dog.ceo/api/breeds'

  def random_dog_image
    self.class.get('/image/random')
  end

  def all_breeds
    self.class.get('/list/all')
  end
end


describe 'API Practice - ' do
  it 'Random Dog Image API' do
    # dog_api_test = DogAPIPractice.new('Dog API',1)
    dog_api_test = DogAPIPractice.new
    p parsed_json = JSON.parse(dog_api_test.random_dog_image.response.body)
  end

  it 'List All Breeds API' do
    all_breeds = DogAPIPractice.new
    p parsed_json = JSON.parse(all_breeds.all_breeds.response.body)
    # p parsed_json['message'].include? 'bulldog'
    # p parsed_json['message'].keys.index('bulldog')
  end
end



