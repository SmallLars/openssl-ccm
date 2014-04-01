require 'test/unit'
require 'openssl/ccm'

# Additional tests
class CCMFilesTest < Test::Unit::TestCase
  KEY = %W(
    00000000000000000000000000000000
    001234567890ABCDEFDCAFFEED3921EE
    001234567890ABCDEFDCAFFEED3921EE
    11223344AABB00000000000000000000
  )
  NONCE = %W(
    00000000000000000000000000
    00112233445566778899
    001122334455667788990000
    00112233445566778899
  )
  MAC_LEN = [16, 8, 14, 8]

  def test_aes
    assert(OpenSSL::CCM.ciphers.include?('AES'), 'Missing AES-Cipher')
    1.upto(3) do |i|
      open("test/data_#{i}", mode = 'r') do |i_file|
        input = i_file.read
        KEY.length.times do |j|
          open("test/data_#{i}-#{j + 1}_e", mode = 'r') do |o_file|
            output = o_file.read
            ccm = OpenSSL::CCM.new('AES', [KEY[j]].pack('H*'), MAC_LEN[j])
            c = ccm.encrypt(input, [NONCE[j]].pack('H*'))
            assert_equal(output.unpack('H*'), c.unpack('H*'),
                         "Wrong ENCRYPT in Vector #{i + 1}")
          end
        end
      end
    end
  end
end
