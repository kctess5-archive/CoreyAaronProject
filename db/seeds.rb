# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

full_response = '{"created_at":"Wed Dec 26 22:34:53 +0000 2012","id":284064771198840832,"id_str":"284064771198840832","text":"\"@jasminezbadd: #SupportHimOrKillYoself http:\/\/t.co\/PA2rMFY2\" this guy .-.","source":"\u003ca href=\"http:\/\/twitter.com\/download\/android\" rel=\"nofollow\"\u003eTwitter for Android\u003c\/a\u003e","truncated":false,"in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":null,"in_reply_to_user_id_str":null,"in_reply_to_screen_name":null,"user":{"id":44066817,"id_str":"44066817","name":"Liza","screen_name":"miszskittlesz09","location":"","url":"","description":"","protected":false,"followers_count":25,"friends_count":28,"listed_count":0,"created_at":"Tue Jun 02 05:32:09 +0000 2009","favourites_count":0,"utc_offset":-18000,"time_zone":"Quito","geo_enabled":false,"verified":false,"statuses_count":43,"lang":"en","contributors_enabled":false,"is_translator":false,"profile_background_color":"C0DEED","profile_background_image_url":"http:\/\/a0.twimg.com\/images\/themes\/theme1\/bg.png","profile_background_image_url_https":"https:\/\/si0.twimg.com\/images\/themes\/theme1\/bg.png","profile_background_tile":false,"profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2854232199\/8a069c8b4d1cec215121970db1f67c94_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2854232199\/8a069c8b4d1cec215121970db1f67c94_normal.jpeg","profile_link_color":"0084B4","profile_sidebar_border_color":"C0DEED","profile_sidebar_fill_color":"DDEEF6","profile_text_color":"333333","profile_use_background_image":true,"default_profile":true,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null},"geo":null,"coordinates":"436.4","place":null,"contributors":null,"retweet_count":0,"entities":{"hashtags":[{"text":"SupportHimOrKillYoself","indices":[16,39]}],"urls":[],"user_mentions":[{"screen_name":"jasminezbadd","name":"jasmine quintero","id":954323365,"id_str":"954323365","indices":[1,14]}],"media":[{"id":284051239963066369,"id_str":"284051239963066369","indices":[40,60],"media_url":"http:\/\/pbs.twimg.com\/media\/A_EnGQgCAAEOcbt.jpg","media_url_https":"https:\/\/pbs.twimg.com\/media\/A_EnGQgCAAEOcbt.jpg","url":"http:\/\/t.co\/PA2rMFY2","display_url":"pic.twitter.com\/PA2rMFY2","expanded_url":"http:\/\/twitter.com\/jasminezbadd\/status\/284051239958872064\/photo\/1","type":"photo","sizes":{"small":{"w":340,"h":340,"resize":"fit"},"thumb":{"w":150,"h":150,"resize":"crop"},"large":{"w":960,"h":960,"resize":"fit"},"medium":{"w":600,"h":600,"resize":"fit"}},"source_status_id":284051239958872064,"source_status_id_str":"284051239958872064"}]},"favorited":false,"retweeted":false,"possibly_sensitive":false,"lang":"en"}'

new_hash = JSON.parse full_response

len = new_hash.length

Map.delete_all

puts len

# x = 0
# while x < len do 
# 	Map.create!(:xcoord => new_hash['coordinates'])
# 	x = x + 1
# end

Map.create!(:xcoord => new_hash['coordinates'])



two_data = '{"coord":"56,27"}'

one_data = JSON.parse two_data

split = one_data['coord']

puts split
puts split[1]
x=0
SplitChar = 0
puts split.length

while x < split.length do
	if split[x] == ',' 
		SplitChar = x
	end
	x += 1
end

puts SplitChar

xcoord = String.new
x = 0
while x < SplitChar
	xcoord = xcoord + split[x]
	x += 1
end

puts xcoord.to_f







