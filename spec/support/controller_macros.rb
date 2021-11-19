module ControllerMacros
    def login_user
        before(:each) do
            @request.env["devise.mapping"] = Devise.mappings[:User]
            User = FactoryBot.create(:User)
            sign_in User
        end
    end
end