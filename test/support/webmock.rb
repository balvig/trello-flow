require "multi_json"
require "webmock/minitest"

class WebMock::RequestStub
  def to_return_json(hash, options = {})
    options[:body] = MultiJson.dump(hash)
    options[:headers] = { "Content-Type" => "application/json" }
    to_return(options)
  end
end
