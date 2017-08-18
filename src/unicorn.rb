if ENV['UNICORN_WORKER_PROCESSES'].to_i > 0
  worker_processes ENV['UNICORN_WORKER_PROCESSES'].to_i
else
  worker_processes 1
end

listen 8080

timeout 30

preload_app true
GC.respond_to?(:copy_on_write_friendly=) && GC.copy_on_write_friendly = true

check_client_connection false
