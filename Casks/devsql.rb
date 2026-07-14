cask "devsql" do
  version "0.1.0"
  sha256 "d4b1d64c203d28cdac6e9ad8410ac29cae32f2ebfe47e7578a023adb38c575fc"

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
