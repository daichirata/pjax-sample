# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  Example.create(
    name:    %w(田中 斎藤 本田).sample + %w(太郎 次郎 花子).sample,
    age:     (20..30).to_a.sample,
    born_at: %w(東京都 大阪府 北海道).sample
  )
end if Example.all.blank?

