cask "devsql" do
  version "0.2.4"
  sha256 "68d5e0e3dd03abc690a88c587d8046e250a0cb484aa54acc7ce17fa90b844a44"

  url "https://github.com/bkrdmrcioglu/devsql-site/releases/download/v0.2.4/DevSQL-0.2.4.zip"
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
