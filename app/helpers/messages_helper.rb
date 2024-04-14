module MessagesHelper
	def all_messages
		messages = Message.order(created_at: :desc)
	end
end
