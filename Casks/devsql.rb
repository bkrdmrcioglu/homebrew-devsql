cask "devsql" do
  version "0.2.2"
  sha256 "7cec04b51a9720594757074e9a48ce3a23482d75bc0d8c71bafa2a848efdd95b"

  url "https://github.com/bkrdmrcioglu/devsql-site/releases/download/v0.2.2/DevSQL-0.2.2.zip"
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
