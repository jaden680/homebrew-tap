class Rtc < Formula
    desc "RT Ticket Check CLI" 
    homepage "https://github.com/jaden680/rt_check" 
    url "https://github.com/jaden680/rt_check/archive/refs/tags/0.0.3.tar.gz"
    sha256 "0b3c25701fcc282b829218627986020db7bebc28e8af02c4bd2ddee57c6be9f2"
    version "0.0.3"
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
