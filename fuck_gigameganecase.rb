# coding:utf-8

Plugin.create(:fuck_gigamegane) do
	on_appear do |mess|
		mess.each do |mes|
			p mes.message[:source].to_s
			if (mes.message[:source].to_s == "ギガネケエス")
				Service.primary.update(:message => "D #{mes.user} ☝( ◠‿◠ )☝")
			end
		end
	end
end