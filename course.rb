require 'json'

class Course
  attr_accessor :code, :serial_no, :department, :grade, :title, :english_title,
                :detail_url, :instructor, :credits, :required, :time_location, 
                :year, :term, :group_id, :master_section_id, :enrollee,
                :max_enrollee, :min_enrollee, :core_capability_url, :footnote,
                :textbook, :references, :website, :objective, :teaching_methods,
                :description, :english_description, :grading, :office_hour

  def initialize(h)
    @attributes =  [:code, :serial_no, :department, :grade, :title, :english_title,
                    :detail_url, :instructor, :credits, :required, :time_location, 
                    :year, :term, :group_id, :master_section_id, :enrollee,
                    :max_enrollee, :min_enrollee, :core_capability_url, :footnote,
                    :textbook, :references, :website, :objective, :teaching_methods,
                    :description, :english_description, :grading, :office_hour]
    
    h.each {|k,v| send("#{k}=",v)}
  end
  
  def to_hash
    @data = Hash[ @attributes.map {|d| [d.to_s, self.instance_variable_get('@'+d.to_s)]} ]
  end
end