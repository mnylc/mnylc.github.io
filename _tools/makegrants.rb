#!/usr/bin/env ruby

# This is a script to assemble divs for the grant history page. The
# script reads a CSV file and prints out anchors corresponding to
# grant years followed by a div per corresponding project. Each div
# consists of a div containing a thumbnail if present which is linked
# to the institution's collection, also if present, and an information
# div containing a field for the institution, the collection (also
# linked to the collection if the link is available), and a
# description of the collection. The output is inserted into the file
# digitization-grants.md, between the line of links to the anchors and
# the Advisory Council section. Immediate TODOs would be to automate
# the deletion and insertion of the HTML (perhaps by inserting
# delimiters into the file) and to download the associated spreadsheet
# automatically as we do with the jobs spreadsheet.

require 'csv'
require 'nokogiri'

# hash of arrays of grant years
grant_years = {}

# Read each row of the CSV to build project's div
CSV.foreach(ARGV[0]) do |row|
  # skip the header
  next if row[0].eql?('pid')

  # check for existence of thumbnail file and save path if it does
  path = '../assets/img/grants/' + row[0] + '.gif'
  tn = path[2..-1]  if File.file?(path)

  # make a bunch of divs
  @bob = Nokogiri::HTML::DocumentFragment.parse ''
  # build the entry
  Nokogiri::HTML::Builder.with(@bob) do |doc|
    # outer div class 'grant'
    doc.div(class: 'grant', id: row[0]) do
      # if there's a thumbnail
      # inner div 'thumb'
      if tn
        doc.div(class: 'thumb') do
          # if there's a link
          if row[4]
            doc.a(href: row[4]) do
              i = doc.img(src: tn)
              # if there's an alt attribute
              i['alt'] = row[6] if row[6]
            end
          else
            i = doc.img(src: tn)
            i['alt'] = row[6] if row[6]
          end
        end
      end
      # end 'thumb'
      # inner div 'info'
      doc.div(class: 'info') do
        # institution
        doc.b do
          doc.text('Institution: ')
        end
        doc.text(row[2])
        doc.br
        # collection name
        # if there's a link, wrap the collection name in it

        doc.b do
          doc.text('Collection: ')
        end
        if row[4]
          doc.a(href: row[4]) do
            doc.text(row[3])
          end
        else
          doc.text(row[3])
        end
        doc.br
        # description
        doc.b do
          doc.text('Description: ')
        end
        doc.text(row[5])
        doc.br
      end
      # end 'info'
    end
    # end 'grant'
    # add a break tag for space
  end

  # push the entry onto the array whose key is the grant year.
  if grant_years.key?(row[1])
    grant_years[row[1]].push(@bob.to_html.gsub('<br>', '<br/>'))
  else
    grant_years[row[1]] = [@bob.to_html.gsub('<br>', '<br/>')]
  end
end

# print out the html.
grant_years.keys.sort.reverse_each do |yr|
  # print the anchors
  print "<a class=\"anchor\" id=\"#{yr}\"/>\n## #{yr} Funded Projects\n\n"

  # print the entries
  grant_years[yr].each do |gr|
    print gr + "\n"
  end
  # add back to top link at the bottom
  print '[Back to top](#top)' + "\n\n"
end
