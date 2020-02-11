# Bookmark-Manager
Week 4 Afternoon task 

<<<<<<< HEAD


=======
Building a web app with a database. 


User stories :

As a user 
So that I can access my web bookmarks 
I'd like to be able to list all bookmarks 


Domain Modelling 

     Client                         Controller                            Model                             View  

     Client sends a get request>>>>   App.    >>controller sends method 
                                            .all to the model >>>>. Bookmarks
                                            
                                      App. <<Model responds with all [bookmarks]<<
                                 
                                      App. >>>>> Controller sends [bookmarks] to view >>>>>>>>>>>>>>>>>>.erb bookmarks
                                 
                                      App. <<<<<<<<<<<<<<<<<<<<<<<<<view returns html to the controller<<<<<<<
                                 
                                      App. 
     <<<Controller returns HTML to the client                             
>>>>>>> bbf87cc2078b50cc1fa99ecb115962cbd3ac8cf5
