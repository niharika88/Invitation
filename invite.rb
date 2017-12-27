#!/usr/bin/env ruby

require  './lib/invitation_sender.rb'

radius = ARGV[1] || 100
office_latitude = ARGV[2] || 53.3381985
office_longitude = ARGV[3] || -6.2592576

puts InvitationSender.new(ARGV[0], radius, office_latitude, office_longitude).guest_list
