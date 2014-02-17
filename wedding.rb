require 'sinatra'

get '/' do
	@gallery = gallery_data
  erb :index
end

def gallery_data
  data = [
					{id: 6,  url: "http://www.flickr.com/photos/117820642@N04/12575902203/in/set-72157641086452473/"},
					{id: 7,  url: "http://www.flickr.com/photos/117820642@N04/12576257464/in/set-72157641086452473/"},
					{id: 11, url: "http://www.flickr.com/photos/117820642@N04/12575793655/in/set-72157641086452473/"},
					{id: 13, url: "http://www.flickr.com/photos/117820642@N04/12575791775/in/set-72157641086452473/"},
					{id: 16, url: "http://www.flickr.com/photos/117820642@N04/12575892063/in/set-72157641086452473/"},
					{id: 20, url: "http://www.flickr.com/photos/117820642@N04/12576244594/in/set-72157641086452473/"},
					{id: 22, url: "http://www.flickr.com/photos/117820642@N04/12575781795/in/set-72157641086452473/"},
					{id: 40, url: "http://www.flickr.com/photos/117820642@N04/12575875353/in/set-72157641086452473/"},
					{id: 38, url: "http://www.flickr.com/photos/117820642@N04/12575770875/in/set-72157641086452473/"},
					{id: 52, url: "http://www.flickr.com/photos/117820642@N04/12575763225/in/set-72157641086452473/"},
					{id: 61, url: "http://www.flickr.com/photos/117820642@N04/12575758545/in/set-72157641086452473/"},
					{id: 71, url: "http://www.flickr.com/photos/117820642@N04/12575754935/in/set-72157641086452473/"},
					{id: 74, url: "http://www.flickr.com/photos/117820642@N04/12575858683/in/set-72157641086452473/"},
					{id: 78, url: "http://www.flickr.com/photos/117820642@N04/12575854203/in/set-72157641086452473/"},
					{id: 88, url: "http://www.flickr.com/photos/117820642@N04/12575738725/in/set-72157641086452473/"},
					{id: 90, url: "http://www.flickr.com/photos/117820642@N04/12575737945/in/set-72157641086452473/"}
				]
  data.each{|d| d[:thumbnail_url] = thumbnail_url(d[:id])}
  data
end

def thumbnail_url(id)
  "/images/gallery_thumbnails/thumbnail_PIS#{id}.jpg"
end