class ApplicationController < ActionController::Base
    helper_method :user_login
    def user_login
        if session[:user_id]
            @user_login ||= User.find(session[:user_id])
        else
            @user_login = nil
        end
    end
end
