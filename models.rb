DataMapper.setup(:default, ENV['POSTGRES_STRING'])

class Post
  include DataMapper::Resource
  property :id, Serial
  property :timestamp, DateTime, default: Time.now
  property :heading, String, length: 255
  property :content, Text
  
  property :username, String
  property :userlink, String  
end
