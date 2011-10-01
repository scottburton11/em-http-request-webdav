module EventMachine
  class HttpConnection
    [:propfind, :proppatch, :mkcol, :copy, :move, :lock, :unlock, :options].each do |meth|
      class_eval %[
        alias :a#{meth} :#{meth}
        def #{meth}(options = {}, &blk)
          f = Fiber.current
          conn = setup_request(:#{meth}, options, &blk)
          conn.callback { f.resume(conn) }
          conn.errback  { f.resume(conn) }
          Fiber.yield
        end
      ]
    end
  end
end
