module rune2

fn test_basic_latin() {
	mut r := `g`
	assert is_basic_latin(r) == true
	r = `D`
	assert is_basic_latin(r) == true
	r = `4`
	assert is_basic_latin(r) == false
	r = ` `
	assert is_basic_latin(r) == false
	r = `こ`
	assert is_basic_latin(r) == false
}

fn test_to_lower() {
	mut r := `G`
	assert to_lower(r) == `g`
	r = `A`
	assert to_lower(r) == `a`
	r = `Z`
	assert to_lower(r) == `z`
	r = ` `
	assert to_lower(r) == ` `
	r = `こ`
	assert to_lower(r) == `こ`
}

fn test_to_upper() {
	mut r := `g`
	assert to_upper(r) == `G`
	r = `a`
	assert to_upper(r) == `A`
	r = `z`
	assert to_upper(r) == `Z`
	r = ` `
	assert to_upper(r) == ` `
	r = `こ`
	assert to_upper(r) == `こ`
}
