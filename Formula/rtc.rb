class Rtc < Formula
    desc "RT Ticket Check CLI" 
    homepage "https://github.com/jaden680/rt_check" 
    url "https://github.com/jaden680/rt_check/archive/refs/tags/0.0.2.tar.gz"
    sha256 "dd8ca60fcb7eaf2f9e005119fadc51239d8a522e3a36339caa6cf5f6b5749704"
    version "0.0.2"
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
