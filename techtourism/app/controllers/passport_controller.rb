class PassportController < ApplicationController
    def index
        @passports = Passport.all
    end
end
