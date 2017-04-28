cask 'firefox-40' do
    version '40.0.3'

    language 'en', default: true do
        sha256 '99cfc9073453a41803f4b2992b8f2655376c17d0dcff3ee5ad0474e08ca26098'
        'en-US'
    end

    language 'fr' do
        sha256 '410e5f3815bb9ebd7addeefb597cf2c3b156765649f088f4d4d8173c2d968da2'
        'fr'
    end

    url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"

    name 'Firefox'
    name 'Mozilla Firefox'

    homepage 'https://www.mozilla.org/firefox/'

    auto_updates true

    app 'Firefox.app', target: 'Firefox-40.app'

    zap delete: [
        '~/Library/Application Support/Firefox',
        '~/Library/Caches/Firefox',
    ]
end