#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new('Category:Members of the Congress of Guatemala', 'en').member_titles
de = WikiData::Category.new('Kategorie:Abgeordneter (Guatemala)', 'de').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, de: de })
