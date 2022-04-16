require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css('.card-title-tl')
puts courses.map {|course| course.text.strip}