require 'sinatra'
require 'mandrill'




get '/' do 
	erb :homepage
end

get '/homepage' do
	erb :homepage
end

get '/about' do
	erb :about
end

get '/smoothies' do
	erb :smoothies
end

get '/contactus' do
	@title = "Contact"
	erb :contactus
end

post '/contactus' do
	puts params.inspect
	email = params["email"]
	user_message = params["message"]
	puts "sending email!"
	m = Mandrill::API.new
	message = {  
	 :subject=> "New Message",  
	 :from_name=> "Desiree Gill",  
	 :text=>"New Message:" + user_message,
	 :to=>[  
	   {  
	     :email=> email,  
	     :name=> "Recipient1"  
	   }  
	 ],  
	 :html=>"<html><h1>New Message</h1><h3>#{user_message}</h3></html>",  
	 :from_email=>"desi.gill29@gmail.com"  
	}  
	sending = m.messages.send message  
	puts sending
	redirect to('/thanks')
end

get '/thanks' do
	erb :thanks
end

#test





