class Api::UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token

    def create
    end
end
