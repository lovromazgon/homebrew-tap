# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Impromptu < Formula
  desc ""
  homepage "https://github.com/lovromazgon/homebrew-tap"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lovromazgon/impromptu/releases/download/v0.1.1/impromptu_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "54cbd560029717184928519ae09e996ac088c3c5c6e8f5c710deb4fa91c74d18"

      def install
        bin.install "impromptu"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lovromazgon/impromptu/releases/download/v0.1.1/impromptu_0.1.1_Darwin_arm64.tar.gz"
      sha256 "bdd59797414e3bd3a20d61a33a962ddca557da402b6697225aa4596a3500c18f"

      def install
        bin.install "impromptu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lovromazgon/impromptu/releases/download/v0.1.1/impromptu_0.1.1_Linux_x86_64.tar.gz"
      sha256 "cee508756db36fd9a1b7281d3babb7a0587d9aa609617adccf396089fbad4176"

      def install
        bin.install "impromptu"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lovromazgon/impromptu/releases/download/v0.1.1/impromptu_0.1.1_Linux_arm64.tar.gz"
      sha256 "fb2580d257f8ccf94cf247742a9c118428fac644b524535851e384aea24e81a6"

      def install
        bin.install "impromptu"
      end
    end
  end

  test do
    assert_match(version.to_s, shell_output("#{bin}/impromptu --version"))
  end
end
