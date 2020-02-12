require 'pg'

class Bookmark

    def list

     connection = PG.connect(dbname: 'woofbark_manager')    
     result = connection.exec('SELECT * FROM woofbarks;')
     result.map { |woofbark| woofbark["url"] }
    end

    
end