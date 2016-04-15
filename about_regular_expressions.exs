defmodule AboutRegularExpressions do
  use Koans

  think "A simple regular expression" do
    regex = Regex.compile!("This [W|w]orks!")

    completion = __?

    assert ("This W" <> completion) =~ regex
    assert ("This w" <> completion) =~ regex
  end

  think "Regular expressions can use options" do
    regex = Regex.compile!("this works!", __?)

    assert "this works!" =~ regex
    assert "ThIs wOrKs!" =~ regex
  end

  think "Regular expressions can be created with sigils" do
    regex = Regex.compile!(__?)

    assert regex == ~r{this works!}
  end

  think "Sigils have flexible delimiters" do
    # Hint: Don't use Regex.compile here, use a sigil instead
    assert __? == ~r/this works!/
  end

  think "Capture groups" do
    regex = ~r{(A|The) lazy bear slept for (\d+) months}
    text = "The lazy bear slept for 5 months"
    assert Regex.run(regex, text) == __?
  end

  think "Replacing with capture groups" do
    text = "This has vowels"
    regex = ~r{([aeiou])}
    assert Regex.replace(regex, text, "<\\1>") == __?
  end
end
