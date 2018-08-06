class UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticiity_token
end
