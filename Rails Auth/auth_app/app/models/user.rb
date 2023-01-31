class User < ApplicationRecord
    before_validation :ensure_session_token 
    validates :username, :session_token, presence: true
    validates :password_digest, presence: { strict: true }
    validates :password, allow_nil: true, length: {minimum: 6}

    attr_accessor :password
    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user && user.is_password?(password)
            return user
        else 
            return nil 
        end
    end

    def generate_unique_session_token
		self.session_token ||= SecureRandom::urlsafe_base64
    end

    def password=(password)
        self.password_digest = Bcrypt::Password.create(password)
    end

    def is_password?
        #turn string into an object
        password_object = BCrypt::Password.new(self.password_digest)
        
        password_object.is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save! #loud save
        
    end

    def ensure_session_token

    end
end
