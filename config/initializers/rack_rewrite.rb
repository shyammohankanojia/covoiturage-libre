Rails.application.config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
  r301 '/association_descriptif.php', '/association'
  r301 '/recherche.php', '/rechercher'
  r301 '/stickers.php', '/stickers'
  r301 '/presse.php', '/presse'
  r301 '/faq.php', '/faq'
  r301 '/contact.php', '/contact'
  r301 '/mentions-legales.php', '/mentions-legales'

  r301 '/nouveau.php', '/trajets/nouveau'

  r301 %r{/detail\.php\?c=(\w+).*}, '/trajets/$1'
  r301 %r{/validation\.php\?c=(\w+).*}, '/trajets/$1/confirm'
  r301 %r{/modification\.php\?m=(\w+).*}, '/trajets/$1/edit'
  r301 %r{/suppression\.php\?supp=(\w+).*}, '/trajets/$1/edit'

end