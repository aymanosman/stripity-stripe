import Config

if File.exists?("config/config.secret.exs") do
  import_config "config.secret.exs"
end

config :erlexec,
  # erlexec is very particular about being run as root
  user: System.get_env("USER")
