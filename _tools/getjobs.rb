#!/usr/bin/env ruby
# coding: utf-8
require 'csv'
require 'liquid'
require 'byebug'

CSV.foreach(ARGV[0], encoding: 'UTF-8') do |row|
  next if row[0] == 'Timestamp'

  # build fields.
  row.map! do |x|
    if x =~ %r{https*:\/\/[^\s]+}
      x.gsub!(%r{(https*:\/\/[^\s]+)}, '[\\1](\\1)')
    else
      x
    end
  end
  
  datebits = row[0].split(' ')[0].split('/')
  datestr = datebits[2] + ' ' + datebits[0].rjust(2, '0')
  datestr += ' ' + datebits[1].rjust(2, '0')
  frontmatter_datestr = datestr.tr(' ', '-')
  title = row[1].nil? ? "" : row[1]
  title_save = title 
  institution = row[2].nil? ? "" : row[2]
  description = row[3].nil? ? "" : row[3]
  description.nil? ? "" : description.gsub!('\*', "\n*") 
  description.nil? ? "" : description.gsub!(/(.)\n\*/, "\\1\n\n*") 
  resps = row[4]
  resps.nil? ? resps = "" : resps.gsub!('\*', "\n*") 
  resps.nil? ? resps = "" : resps.gsub!('•', "\n• ") 
  resps.nil? ? resps = "" : resps.gsub!(/(.)\n\*/, "\\1\n\n*")  
  qualifications = row[5].nil? ? "" : row[5]
  qualifications.nil? ? qualifications = "" : qualifications.gsub!('\*', "\n*") 
  qualifications.nil? ? qualifications = "" : qualifications.gsub!('•', "\n• ") 
  qualifications.nil? ? qualifications = "" : qualifications.gsub!(/(.)\n\*/, "\\1\n\n*")  
  compensation = row[6]
  compensation.nil? ? compensation = "" : compensation.gsub!('\*', "\n*") 
  compensation.nil? ? compensation = "" : compensation.gsub!(/(.)\n\*/, "\\1\n\n*") 
  location = row[7].nil? ? "" : row[7]
  url = row[8].nil? ? "" : row[8]
  to_apply = row[9].nil? ? "" : row[9]
  company_info = row[10].nil? ? "" : row[10]
  contact_info = row[11].nil? ? "" : row[11]

  # get a reasonable excerpt from the description.
  template = Liquid::Template::parse("{{ desc | strip_html | xml_escape | truncatewords: 50 }}")
  excerpt = template.render({ 'desc' => description })
  excerpt.gsub!('"', '\\"')

  markdoc = <<HERE
---
layout: post
title:  "#{title} - #{institution}"
date:   #{frontmatter_datestr}
excerpt: "#{excerpt}"
tag: job
---

#{"### Description###\n\n" + description + "\n" unless description.eql? ""}

#{"### Responsibilities###\n\n" + resps + "\n" unless resps.eql? ""}

#{"### Qualifications###\n\n" + qualifications + "\n" unless qualifications.eql? ""}

#{"### Compensation###\n\n" + compensation + "\n" unless compensation.eql? ""}

#{"### Location###\n\n" + location + "\n" unless location.eql? ""}

#{"### URL###\n\n" + url unless url.eql? ""}

#{"### To Apply###\n\n" + to_apply + "\n" unless to_apply.eql? ""}

#{"### Company Information###\n\n" + company_info + "\n" unless company_info.eql? ""}

#{"### Contact Information###\n\n" + contact_info + "\n" unless contact_info.eql? ""}
HERE

  jfname = datestr + ' ' + title_save.upcase + ' ' + institution.upcase
  jfname.tr!('/ ().,&\'\"', '-')
  jfname.gsub!('--', '-')
  jfname += '.markdown'

  jobfile = File.open("../_posts/jobs/" + jfname, 'w')
  jobfile.puts markdoc
  jobfile.close
end
