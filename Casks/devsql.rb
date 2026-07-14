cask "devsql" do
  version "0.1.0"
  sha256 "REPLACE_AFTER_NOTARIZED_ZIP"

  url "https://github.com/bkrdmrcioglu/devsql-site/releases/download/v#{version}/DevSQL-#{version}.zip"
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
