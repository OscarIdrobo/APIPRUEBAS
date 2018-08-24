class Message
    def self.not_found(record = 'record')
      "El registro #{record} no fue encontrado."
    end
  
    def self.invalid_credentials
      'Inválidas credenciales'
    end
  
    def self.invalid_token
      'Inválido token'
    end
  
    def self.missing_token
      'Falta el token'
    end
  
    def self.unauthorized
      'Inautorizada solicitud'
    end
  
    def self.account_created
      'Cuenta creada correctamente'
    end
  
    def self.account_not_created
      'Account could not be created'
    end
  
    def self.expired_token
      'Sorry, your token has expired. Please login to continue.'
    end
end
  