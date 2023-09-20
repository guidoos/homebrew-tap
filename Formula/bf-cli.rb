# Generated with JReleaser 1.8.0 at 2023-09-20T16:51:08.954807+02:00
class BfCli < Formula
  desc "BeFrank test CLI"
  homepage "https://github.com/guidoos/bf-cli"
  url "https://github.com/guidoos/bf-cli/releases/download/1.0.0/bf-cli-1.0.0-osx-aarch_64.zip"
  version "1.0.0"
  sha256 "45e331d706af02a46ffad47bad65622108a067b726bdae00445c782caf5928c7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/bf-cli" => "bf-cli"
  end

  test do
    output = shell_output("#{bin}/bf-cli --version")
    assert_match "1.0.0", output
  end
end
