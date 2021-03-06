class ApplicationRecord
  mattr_accessor :shared_connection
  @@shared_connection = nil

  def self.connection
    @@shared_connection || retrieve_connection
  end
end
ApplicationRecord.shared_connection = ApplicationRecord.connection
