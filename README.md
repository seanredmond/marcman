# Marcman

Like a man page for MARC. Marcman provides an executable (`marcman`)
for quickly looking up MARC bibliographic fields by their code. It
also provides a little quiz (`marcquiz`) to test your knowledge of
MARC fields and subfields (because once I'd written the rest, making a
quiz was easy and fun).

## Installation

Install the gem:

    $ gem install marcman

Run the program:

    $ bundle

## Usage

Give `marcman` a MARC field code to see its definition:

    $ marcman 245
    245: Title Statement

If you want to see the indicators user the `-i` flag:

    $ marcman 245 -i
    245: Title Statement
      First indicator: Title added entry
        0 - No added entry
        1 - Added entry
      Second indicator: Nonfiling characters
        0 - No nonfiling characters
        1-9 - Number of nonfiling characters

Or to see the subfields use `-s`:

    $ marcman 245 -s
	245: Title Statement
      Subfields:
        $a - Title
        $b - Remainder of title
        $c - Statement of responsibility, etc.
        $f - Inclusive dates
        $g - Bulk dates
        $h - Medium
        $k - Form
        $n - Number of part/section of a work
        $p - Name of part/section of a work
        $s - Version
        $6 - Linkage
        $8 - Field link and sequence number

If you want to know what is repeatable, use `-r` (and the flags can
all be combined):

    $ marcman 245 -sr
    245: Title Statement (non-repeatable)
      Subfields:
        $a - Title (non-repeatable)
        $b - Remainder of title (non-repeatable)
        $c - Statement of responsibility, etc. (non-repeatable)
        $f - Inclusive dates (non-repeatable)
        $g - Bulk dates (non-repeatable)
        $h - Medium (non-repeatable)
        $k - Form (repeatable)
        $n - Number of part/section of a work (repeatable)
        $p - Name of part/section of a work (repeatable)
        $s - Version (non-repeatable)
        $6 - Linkage (non-repeatable)
        $8 - Field link and sequence number (repeatable)

The `-b` flag will try to open the web documentation in your
default browser. For example:

    $ marcman 245 -b

Should open https://www.loc.gov/marc/bibliographic/bd245.html 

## Take the quiz

Run `marcquiz` to test your knowledge of MARC in an interarctive quiz:

    ~ marcquiz
    Question 1 of 10
    Which field is "Content Type"?
    
    1. 538
    2. 026
    3. 787
    4. 336
    
    Enter your answer (Q to quit):

Use the `-q` flag to change the number of questions. But really it's a
demo of using the MARC spec data in Marcman for another purpose. if
you `require "marcman"` in your own code you will have access to
`Marcman::MARC` -- a big data structure with all the bibliographic
field definitions.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/marcman. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Marcman project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/marcman/blob/master/CODE_OF_CONDUCT.md).
