cask "devsql" do
  version "0.2.3"
  sha256 "4f2133d8aa8ced62ec1cec3bd0b99a549cb071371d40a414d7d04a07943aff0c"

  url "https://github.com/bkrdmrcioglu/devsql-site/releases/download/v0.2.3/DevSQL-0.2.3.zip"
  name "DevSQL"
  desc "Part of DevSuites — see https://devsuites.dev/devsql/"
  homepage "https://devsuites.dev/devsql/"

  depends_on macos: :sonoma

  app "DevSQL.app"

  zap trash: [
    "~/Library/Preferences/com.devsql.app.plist",
    "~/Library/Application Support/DevSQL",
  ]
end
