class WinnerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :initials, :score
end
