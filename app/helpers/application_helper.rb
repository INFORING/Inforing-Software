module ApplicationHelper
	def sign_in
		remember_token = SecureRandom.urlsafe_base64
    cookies.permanent[:remember_token] = remember_token
    File.write("config/token","#{remember_token}")
	end

	def is_admin?
		remember_token = File.read("config/token")
		unless cookies[:remember_token].nil?
      true if cookies[:remember_token] == remember_token
    else
      false
    end
	end

end
