Plugin.create(:butimiri_rantotu) do
	DEFINED_TIME = Time.new.freeze
	on_appear do |ms|
		ms.each do |m|
			if m.message.to_me?()
				if !m.message.from_me?()
					if m.message.to_s =~ /ﾌﾞﾘ|ﾘｭﾘｭ|ﾌﾞﾂ|ﾁﾁ|ﾐﾘ|㍉|ﾌﾞﾁ|ぶちっ|みりっ|([ぶちみりブチミリ]){4,}/ and m[:created] > DEFINED_TIME and !m.retweet? then
						Service.primary.post(:message => "#{"@" + m.user.idname + ' ' + "(´･ω･｀)凸" + "！" * rand(50)}", :replyto => m)
						m.message.favorite(true)
					elsif m.message.to_s =~ /ｯ！/ and m[:created] > DEFINED_TIME and !m.retweet? then

					elsif m.message.to_s =~ /([うおあｕｏａioUIOA]){5,}?|[!！]{10,}/ and m[:created] > DEFINED_TIME and !m.retweet? then
						Service.primary.post(:message => "#{"@" + m.user.idname + ' ' + "(´･ω･｀)うるさい" + "！"+ "！" * rand(20)}", :replyto => m)
						m.message.favorite(true)
					end
				end
			end
		end
	end
end