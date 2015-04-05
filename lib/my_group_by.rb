module Enumerable
	def my_group_by
		array = self.clone
		array.each_with_object({}) do |arg, result|
			res = yield arg
			result[res] ||= []
			result[res] << arg
		end
	end

end
