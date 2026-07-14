cask "devsql" do
  version "0.2.0"
  sha256 "813e5ad25cd96849b27b1ccab0a5fd39f799748acc8e15211df3b108df273712"

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
