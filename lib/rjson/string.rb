module RJSON
  class String < ::String
    def encode_json(encoder)
      # Don't encode, we're a JSON string already
      self
    end
  end
end