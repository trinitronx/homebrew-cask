cask 'trader-workstation' do
  version '978.2c'
  sha256 'b26ddb90e4de843f35a29c006542468a199c2097927b346f163a6b36b317d992'

  url 'https://download2.interactivebrokers.com/installers/tws/stable-standalone/tws-stable-standalone-macosx-x64.dmg'
  name 'Trader Workstation'
  homepage 'https://www.interactivebrokers.com/'

  installer script: {
                      executable: "#{staged_path}/Trader Workstation #{version.major} Installer.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall quit:   'com.install4j.5889-6375-8446-2021.22',
            script: {
                      executable: "#{ENV['HOME']}/Applications/Trader Workstation #{version.major}/Trader Workstation #{version.major} Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }
end
