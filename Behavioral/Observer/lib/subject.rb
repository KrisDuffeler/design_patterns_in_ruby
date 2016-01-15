class Subject
  def initialize
    @observers = []
  end

  def attach(observer)
    @observers << observer
  end

  def detach
    @observers.delete(observer)
  end

  def notify
    @observers.each{|observer| observer.update(self) }
  end
end
