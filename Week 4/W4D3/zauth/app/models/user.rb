class User < ApplicationRecord
    def password=(pass)
        self.pass_digest = BCrypt::Password.create(pass)
    end
end