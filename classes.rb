require 'rubygems'
require 'sinatra'
require 'dm-core'
require 'dm-timestamps'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/pullist.db")

class Book
    include DataMapper::Resource
        
        property :id,       Serial
        property :date,     String
        property :name,     String
        property :price,    String
        property :pub,      Object
end


class Publisher
    include DataMapper::Resource

    property :id,           Serial
    property :name,         String
end 

DataMapper.auto_upgrade!
