module Errorable

  def add_error(err)
    initialize_errors
    @_errors.push(err)
  end

  def get_errors
    initialize_errors
    @_errors
  end

  def flush_errors
    initialize_errors
    errors   = @_errors
    @_errors = []
    errors
  end

  private

  def initialize_errors
    @_errors ||= []
  end

end
