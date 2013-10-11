module ScormCloud
	class TaggingService < BaseService
		not_implemented :set_course_tags, :add_course_tag,
				:remove_course_tag, :get_learner_tags, :set_learner_tags, :add_learner_tag,
				:remove_learner_tag, :get_registration_tags, :set_registration_tags,
				:add_registration_tag, :remove_registration_tag

    def get_course_tags(courseid)
      xml = sc.tagging.connection.call("rustici.tagging.getCourseTags", :courseid => courseid)
      tags = []
      xml.elements["/rsp/tags"].each{|t|
        tags << t[0].to_s
      }
      tags
    end
  end

end

