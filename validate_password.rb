class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    combined_regex = Regexp.new("^(?=.{6,24}$)(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%&*+=:;?<>])(?!.*(.)\1\1)")
    !combined_regex.match(@password).nil?
  end
end
