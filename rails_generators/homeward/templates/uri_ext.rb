module URI
  class Generic
    def host_with_port
      normalized_port = ":#{port}" unless port == default_port
      "#{host}#{normalized_port}"
    end
  end
end
