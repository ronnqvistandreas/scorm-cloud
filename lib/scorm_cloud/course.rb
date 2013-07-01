module ScormCloud
	class Course < ScormCloud::BaseObject

		attr_accessor :id, :versions, :registrations, :title, :size, :tags

		def self.from_xml(element)
			c = Course.new
			c.set_attributes(element.attributes)
      tmp = []
      element.elements["tags/"].each {|t|
        tmp << t[0].to_s
      }
      c.tags = tmp
      c
		end

	end
end