require "thor"
require "site_response"
require "benchmark"

module SiteResponse
    class CLI < Thor
      desc "test", "testing gem"

      def test
        puts SiteResponse.test
      end

      desc "time_taken", "check site response"

      def time_taken(website)
        # puts SiteResponse.time_taken (website)
        puts "check #{SiteResponse.time_taken(website)}"
        # time_take_array = []
        # 6.times do
        #   start_time = Time.now
        #   time = Benchmark.measure do
        #     url = URI.parse('http://www.example.com/index.html')
        #     req = Net::HTTP::Get.new(url.to_s)
        #     # res = Net::HTTP.start(url.host, url.port) {|http|
        #     #   http.request(req)
        #     # }
        #     # puts res.body
        #   end
        #   elapsed_time = Time.now - start_time
        #   time_take_array << elapsed_time
        # end
        # puts time_take_array
      end
    end
end
