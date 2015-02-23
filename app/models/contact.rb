class Contact < ActiveRecord::Base
    # Está será una la nueva petición.
    # self hace referencia aun metodo que cualquier instancia del modelo
    # podrá llamar.
    # all_cached es el nombre del metodo.
    # Rails.cache.fetch busca en el cache si existe algo con el ID 'Contact.all'
    # si no existe ejecuta el comando entre llaves, si existe se trae el resultando inmediatamente.    
    def self.all_cached
      Rails.cache.fetch('Contact.all') { all }
    end
end
