guard 'livereload' do
  watch(%r{views/.+\.(slim|sass)$})
  watch("app_run.rb")
  watch("config.ru")
end

guard :shotgun, server: "thin", host: "0.0.0.0", port: "3000" do
end
