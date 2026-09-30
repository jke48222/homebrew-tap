cask "otto" do
  version "1.1.0"
  sha256 "ac8725b7187bd4e0a2d7779ca84770aa60fa5f10325ad9f3bce125c5d4a564af"

  url "https://hbf1i2zuh6iqdyiw.public.blob.vercel-storage.com/releases/Otto-#{version}.dmg",
      verified: "hbf1i2zuh6iqdyiw.public.blob.vercel-storage.com/releases/"
  name "Otto"
  desc "AI assistant that lives in the notch"
  homepage "https://ottonotch.com/"

  livecheck do
    url "https://ottonotch.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Otto.app"

  uninstall quit: "com.jalenedusei.otto"

  zap login_item: "Otto",
      trash:      [
        "~/Library/Application Support/Otto",
        "~/Library/Caches/com.jalenedusei.otto",
        "~/Library/HTTPStorages/com.jalenedusei.otto",
        "~/Library/Preferences/com.jalenedusei.otto.plist",
      ]
end
