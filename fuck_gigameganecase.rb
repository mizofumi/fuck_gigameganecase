# coding:utf-8

Plugin.create(:fuck_gigamegane) do
	
	UserConfig[:fuck_gigameganecase_active] ||= false

	if UserConfig[:fuck_gigameganecase_active]
		on_appear do |mess|
			mess.each do |mes|
				p mes.message[:source].to_s
				if (mes.message[:source].to_s == "ギガネケエス")
					if (UserConfig[:fuck_gigameganecase] == "")
						str ||= "☝( ◠‿◠ )☝"
					else
						str ||= UserConfig[:fuck_gigameganecase]
					end
					Service.primary.update(:message => "D #{mes.user} #{str}")
				end
			end
		end
	end

	settings "Fuckギガネケエス" do
        settings "せってー" do
        	boolean "有効", :fuck_gigameganecase_active
        	input "内容", :fuck_gigameganecase
        end

        closeup summary = ::Gtk::Label.new(
            "\n\n" +
            "攻めろ\n"
        )
    end
end