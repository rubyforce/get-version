require 'sinatra'

module GetVersion
  class Web < Sinatra::Base
    get '/version.txt' do
      content_type 'text/plain'
      run_command("git describe --tags")
    end

    private

    def run_command(command)
      IO::popen command do |pipe|
        pipe.gets
      end
    end
  end
end

