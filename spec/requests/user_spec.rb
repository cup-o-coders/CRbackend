require 'rails_helper'

RSpec.describe User, type: :request do
    it "doesn't create a user without a name" do
        user_params = {
            user: {
                email: 'hunterstokes@me.com',
                password: 'thispass123'
            }
        }
        post '/users', params: user_params
        expect(response.status).to eq 422
        json = JSON.parse(response.body)
        expect(json['name']).to include "can't be blank"
    end

    it "doesn't create a user without an email" do
        user_params = {
            user: {
                name: 'Hunter',
                password: 'thispass123'
            }
        }
        post '/users', params: user_params
        expect(response.status).to eq 422
        json = JSON.parse(response.body)
        expect(json['email']).to include "can't be blank"
    end

    it "doesn't create a user without a password" do
        user_params = {
            user: {
                name: 'Hunter',
                email: 'hunterstokes@me.com'
            }
        }
        post '/users', params: user_params
        expect(response.status).to eq 422
        json = JSON.parse(response.body)
        expect(json['password']).to include "can't be blank"
    end
end
