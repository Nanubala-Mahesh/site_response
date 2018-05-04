require "site_response/version"

module SiteResponse
  # Your code goes here...
  def self.time_taken(website = nil)
    "checking site response #{website}"

    url = "#{website}"
    uri = URI(url)
    6.times do
      time = Benchmark.measure do
        response = Net::HTTP.get(uri)
        # JSON.parse(response)
      end
      puts "--------------------------"
      puts time
    end


    # time_take_array = []
    #
    # 6.times do
    #   start_time = Time.now
    #   # puts Time.now
    #   time = Benchmark.measure do
    #     # requests
    #     curl -X GET http://127.0.0.1:5984/demo
    #
    #   end
    #   # puts website
    #   # puts Time.now
    #   # puts start_time
    #   elapsed_time = Time.now - start_time
    #   # puts elapsed_time
    #   time_take_array << elapsed_time
    # end
    # puts time_take_array
  end

  def self.test
      "this is a test to check the gem"
  end
end
