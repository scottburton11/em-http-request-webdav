module EventMachine
  class HttpConnection
    [:propfind, :proppatch, :mkcol, :copy, :move, :lock, :unlock, :options].each do |meth|
      send(:define_method, meth, proc {|options = {}, &blk| setup_request(meth, options, &blk) })
    end
  end
end
