# Write a method that takes a hash and returns the depth of the deepest value.

def hash_depth(hash_value, count = 1, counts = [1], dv = "")
  hash_value.each_value do |value|
    if value.class == Hash
      i = count + 1
      counts << i
      hash_depth(value, i, counts)
    else
      counts << value
    end
  end
  max = counts.select { |value| value.class == Fixnum }.max
  index = counts.index(max)
  counts[index + 1]
end

# hash_bonanza = { key_1: { key_2: { key_3_a: { key_4: 'found me!' }, key_3_b:
#                { key_a: { key_b: { key_c: { key_d: 'found me!' }, key_e:
#                'not quite' } } } } }, keyyy: { key_aa: { key_bb: { keycc:
#                { key_dd: 'found me!' }, key_ee: 'not quite' } } } }
hash_bonanza = { :key_1 => { :key_2 => { :key_3_a => { :key_4 => "found me!" }, :key_3_b => "not quite" } } }
p hash_depth(hash_bonanza)

# hash_value.each_value do |value|
#   #require "pry"; binding.pry
#   p value
#   hash_depth(value)
# end
