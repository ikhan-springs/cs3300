require "rails_helper"
require "spec_helper"

RSpec.describe ProjectsController, type: :controller do

    #login_user

    context "GET #index" do
        #login_user
        it "returns a success response" do
            #login_user
            get :index
            # expect(response.success).to eq(true)
            expect(response).to be_success
        end
    end

    context "GET #show" do
        #login_user
        let!(:project) { Project.create(title: "Test title", description: "Test description") }
        it "returns a success response" do
            #login_user
            get :show, params: { id:project }
            expect(response).to be_success
        end
    end
end