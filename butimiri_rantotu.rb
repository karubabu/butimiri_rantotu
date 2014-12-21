Plugin.create(:butimiri_rantotu) do
	DEFINED_TIME = Time.new.freeze
	on_appear do |ms|
		ms.each do |m|
			if m.message.to_me?()
				if m.message.to_s =~ /ﾌﾞﾘ|ﾘｭﾘｭﾘｭ|ﾌﾞﾂ|ﾁﾁ|ﾐﾘ/ and m[:created] > DEFINED_TIME and !m.retweet? then
					Service.primary.post(:message => "#{"@" + m.user.idname + ' ' + "(´･ω･｀)凸" + "！" * rand(50)}", :replyto => m)
					m.message.favorite(true)
				elsif m.message.to_s =~ /うおおお|おおおおお|おあああああ/ and m[:created] > DEFINED_TIME and !m.retweet? then
					Service.primary.post(:message => "#{"@" + m.user.idname + ' ' + "(´･ω･｀)凸うるさい" + "！"+ "！" * rand(50)}", :replyto => m)
					m.message.favorite(true)
				else
				end
			end
		end
	end
end