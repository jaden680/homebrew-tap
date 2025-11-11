class Rtc < Formula
    desc "RT Ticket Check CLI" 
    homepage "https://github.com/jaden680/rt_check" 
    url "https://github.com/jaden680/rt_check/archive/refs/tags/0.0.3.tar.gz"
    sha256 "b595c3335eb5442cede00556f3cad1ade50f27a96e56905189904cd3c33a36da"
    version "0.0.4"
    depends_on "poetry" 
    
    def install
      libexec.install Dir["*"]
      (libexec/"run.sh").chmod 0755
      (libexec/"install.sh").chmod 0755
      bin.write_exec_script libexec/"run.sh"
      system "mv", "#{bin}/run.sh", "#{bin}/rtc"
    end
  
    test do
      echo "Move to the project directory and enter the 'rtc' command."
    end
  end
