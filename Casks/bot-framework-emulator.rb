cask 'bot-framework-emulator' do
  version '4.3.2'
  sha256 'c48a2b464c80c5215deec6445877150b473710e4423bac94233d7a357106eb00'

  url "https://github.com/Microsoft/BotFramework-Emulator/releases/download/v#{version}/botframework-emulator-#{version}-mac.zip"
  appcast 'https://github.com/Microsoft/BotFramework-Emulator/releases.atom'
  name 'Microsoft Bot Framework Emulator'
  homepage 'https://github.com/Microsoft/BotFramework-Emulator'

  auto_updates true

  app 'mac/Bot Framework Emulator.app'

  uninstall quit: 'com.electron.botframework-emulator'

  zap trash: [
               '~/Library/Application Support/botframework-emulator',
               '~/Library/Caches/com.electron.botframework-emulator',
               '~/Library/Caches/com.electron.botframework-emulator.ShipIt',
               '~/Library/Preferences/com.electron.botframework-emulator.helper.plist',
               '~/Library/Preferences/com.electron.botframework-emulator.plist',
               '~/Library/Saved Application State/com.electron.botframework-emulator.savedState',
             ]
end
