class foo < Formula
  # ...

  def install
    # move 'myscript.sh' under #{prefix}/bin/
    bin.install "myscript.sh"

    # OR move 'myscript.sh' to #{prefix}/bin/mybettername
    bin.install "myscript.sh" => "mybettername"

    # OR move *.sh under bin/
    bin.install Dir["*.sh"]
  end
end