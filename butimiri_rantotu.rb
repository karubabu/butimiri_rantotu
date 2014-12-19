Plugin.create(:butimiri_rantotu) do
	DEFINED_TIME = Time.new.freeze
	on_appear do |ms|
		ms.each do |m|
			if m.message.to_me?()
				# うおおおおおおおおおおおおあああああああああああああああああああああああああああああああ！！！！！！！！！！！ (ﾌﾞﾘﾌﾞﾘﾌﾞﾘﾌﾞﾘｭﾘｭﾘｭﾘｭﾘｭﾘｭ！！！！！！ﾌﾞﾂﾁﾁﾌﾞﾌﾞﾌﾞﾁﾁﾁﾁﾌﾞﾘﾘｲﾘﾌﾞﾌﾞﾌﾞﾌﾞｩｩｩｩｯｯｯ！！！！！！！)
				if m.message.to_s =~ /うおおお|おおおおお|おあああああ|ﾌﾞﾘ|ﾘｭﾘｭﾘｭ|ﾌﾞﾂ|ﾁﾁ|ﾐﾘ/ and m[:created] > DEFINED_TIME and !m.retweet?
					Service.primary.post(:message => "#{"@" + m.user.idname + ' ' + "(´･ω･｀)凸" + "！" * rand(40)}", :replyto => m)
					m.message.favorite(true)
				end
			end
		end
	end
end
