require 'pg'

p "looking for doggos"

def setup_test_database

connection = PG.connect(dbname: 'woofbark_manager_test')

connection.exec("TRUNCATE woofbarks;")
end