class Sherlock::Console
  def initialize
  end

  def showPrompt(service)
    return "#{service}> "
  end

  def setService(service)
    @service = service
  end

  def show(argument)
    puts argument
  end

  def showError(command, error)
    case command
    when "service"
      case error
      when "not_available"
        puts "[-] This service doesn't exist."
      end
    when "options"
      case error
      when "no_service"
        puts "[-] Set service before."
      when "bad-option"
        puts "[-] This option doesn't exist."
      else
        puts "[-] Undefined error."
      end
    when "run"
      case error
      when "no_service"
        puts "[-] Set service before."
      end
    else
      puts "[-] Undefined error"
    end
  end

  def showRegisteredOptions(options)
    output = "== SAVED OPTIONS ==\n"
    options.each do |key, value|
      output << "#{key} = #{value}\n"
    end
    puts output
  end
end
