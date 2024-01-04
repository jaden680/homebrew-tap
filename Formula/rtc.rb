class Rtc < Formula
    desc "RT Ticket Check CLI" 
    homepage "https://github.com/jaden680/rt_check" 
    url "https://github.com/jaden680/rt_check/archive/refs/tags/0.0.1.tar.gz"
    sha256 "173c06f3930856837b8f9dd7b7595ad0e4f01402726244d1a911911a40a7a0d9"
    version "0.0.1"
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