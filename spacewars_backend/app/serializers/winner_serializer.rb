class WinnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :initials, :score

  def serializable_hash
    data = super
    if data[:data].is_a? Hash
      return data[:data]
    elsif data[:data].is_a? Array
      data[:data].map { |x| x[:attributes] }
    elsif data[:data] == nil
      nil
    else
      data
    end
  end

end
