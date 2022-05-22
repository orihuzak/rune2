module rune2

pub fn is_basic_latin(c rune) bool {
	return (c >= `a` && c <= `z`) || (c >= `A` && c <= `Z`)
}

pub fn to_lower(c rune) rune {
	if c >= `A` && c <= `Z` {
		return c + 32
	}
	return c
}

pub fn to_upper(c rune) rune {
	if c >= `a` && c <= `z` {
		return c - 32
	}
	return c
}
