## APPLAN
Applan is a web app allowing teachers to create lesson plans, view their collections of lesson plans, edit and delete them. Lesson plan template includes a title, objective, standards, descriptions and vocabulary. 

### Installation
* Clone this repo
* Install all the gems via 
   ``` 
     bundle install
   ```
 * Migrate database
    ```
    rake db:migrate
   ```
 * (optional) Use seed data for pre-existing users login or signup with new username and password. 
     ```
    rake db:seed
    ```
 * run shotgun 
     ```
    shotgun
   ```
 * visit local host in your browser localhost:    
   http://localhost:9393/

### Author(s)
* Hatice Karatay ------ [GitHub -- Hatice Karatay](https://github.com/haticekaratay)
### License 
[MIT](https://github.com/haticekaratay/applan/blob/master/LICENSE)


