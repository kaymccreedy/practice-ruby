require "./employee.rb"
require "./email_reportable"

class Intern < Employee

  include EmailReportable

end