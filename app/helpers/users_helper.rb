module UsersHelper
    def user_happiness(user)
        if user.happiness > 2 
            "happy"
        else
            "sad"
        end
    end
end
