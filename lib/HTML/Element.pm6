class HTML::Element;

has $.name;
has %.attrs;
has $.content;

# TODO
my @empty_tags = <br>;

method new($name, $content?, *%attrs) {
    self.bless(:$name, :$content, :%attrs);
}

multi method attr(Str $name) {
    %!attrs{$name}
}

multi method attr(Str $name, Str $value) {
    %!attrs{$name} = $value;
}

method push-content(Str $content) {
    $!content ~= $content;
}

method Str {
    my $ret = "<$!name {%!attrs.map({ .fmt('%s="%s"') })}>\n";
    unless @empty_tags.first({ $_ eq $!name }) {
        $ret ~= "$!content\n" if $!content;
        $ret ~= "</$!name>";
    }
}
