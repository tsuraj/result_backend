require 'nokogiri'
require 'open-uri'
require "httparty" 
require "byebug"
require 'active_support/core_ext/object/blank'


class Scraper
    
    def get_jobs_urls
        byebug
        recruitment_url = "https://www.rojgarresult.com/recruitments"
        html_content = URI.open(recruitment_url)
        #response = HTTParty.get(url)

        doc = Nokogiri::HTML(html_content)
        job_urls = []
        job_urls_content =  doc.xpath("//div[@class='gb-container gb-container-cdbcb892']//h2//a//@href")
        job_urls = job_urls_content.map{|url| url.content}
    end

    def get_job_details
        job_urls = get_jobs_urls[0..2]
        details = []
        job_urls.each do |job_url|
            byebug
            next if not job_url
            html_content = URI.open(job_url)
            doc = Nokogiri::HTML(html_content)
        
        end

    end
end

scraper = Scraper.new
scraper.get_jobs_urls