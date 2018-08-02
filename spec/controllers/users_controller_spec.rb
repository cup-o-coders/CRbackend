require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    describe "User API" do
        it "can show all profiles" do
            User.create(name: 'Hunter', email: 'hunterstokes@me.com', password: 'examplepass')
            get :index
            json = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            expect(json.length).to eq 1
        end

        # TODO gets the tests to work.
        it "creates a new cat" do
            user_params = {
                user: {
                    name: "Hunter",
                    email: "hunterstokes@me.com",
                    password: "examplepass"
                }
            }
            post :create, params: user_params
            expect(response).to have_http_status(200)
            new_user = User.first
            expect(new_user.name).to eq("Hunter")
            # expect(new_user.email).to eq("hunterstokes@me.com")
        end
    end
end
