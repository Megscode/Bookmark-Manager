require 'pg'

class Bookmark

    def list
      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'woofbark_manager_test')
      else 
        connection = PG.connect(dbname: 'woofbark_manager')    
      end
        
      result = connection.exec('SELECT * FROM woofbarks;')
      result.map { |woofbark| woofbark["url"] }
    end
end