class CourseFinder::Scraper

  def self.courses
    doc = Nokogiri::HTML(open("http://bulletins.wayne.edu/undergraduate/school-business/finance/"))

    overview = doc.css("div#textcontainer.tab_content div.WordSection19 p").text
    CourseFinder::Course.set_overview(overview)

    doc.css("div.courseblock").each do |course|
      course_info = {
        :id => course.css("p.courseblocktitle.noindent strong").text,
        :description => course.css("p.courseblockdesc.noindent").text,
        :extra => course.css("p.courseblockextra.noindent").text
      }
      CourseFinder::Course.new(course_info)
    end
  end

end
