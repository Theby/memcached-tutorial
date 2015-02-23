Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Asigna dalli como el sistema de almacenamiento de cache.
  # Asigna el cache de rails al puerto 17898 de nuestro localhost,
  # este puerto es el mismo que le dimos a memcached mediante la opción
  # -p al iniciar el servicio.
  # Asigna un namespace con el nombre de la aplicación, esto evita conflictos
  # en caso de existir más de un sistema de cache activo en el sistema.
  # Se asigna un periodo en el que expira todo el cache, en este caso 1 día.
  # Finalmente se le dice que la información guardada en el cache sea
  # comprimida para ahorrar espacio.
  config.cache_store = :dalli_store, 'localhost:17898', { :namespace => "memcached-tutorial", :expires_in => 1.day, :compress => true }
end
