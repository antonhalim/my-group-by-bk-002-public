module Enumerable
	def my_group_by
		self.each_with_object({}) do |arg, result|
			res = yield arg
			result[res] ||= []
			result[res] << arg
		end
	end

end
