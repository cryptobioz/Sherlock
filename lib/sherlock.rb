sb = __FILE__
while File.symlink?(sb)
  sb = File.expand_path(File.readlink(sb), File.dirname(sb))
end

$:.unshift(File.expand_path(File.join(File.dirname(sb), '')))

module Sherlock
  autoload :Base, 'sherlock/base'
  autoload :Console, 'sherlock/console'
end
