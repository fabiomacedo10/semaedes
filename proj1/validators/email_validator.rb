
class EmailValidator < ActiveRecord::EachValidator
	def validate_each(record, attribute, value)
		unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
			record.erros[attribute] << (options[:message] || "Is not an email")
		end
	end
end
