cask "devsql" do
  version "0.2.1"
  sha256 "2de6ffd905348a2421e9f53755836a6ce19993d90746e97f695cd4dff8e9de1b"

  url "https://github.com/bkrdmrcioglu/devsql-site/releases/download/v0.2.1/DevSQL-0.2.1.zip"
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
