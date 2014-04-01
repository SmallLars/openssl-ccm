# openssl-ccm

Ruby Gem for RFC 3610 - Counter with CBC-MAC (CCM)

Abstract from tools.ietf.org/html/rfc3610: Counter with CBC-MAC (CCM) is a generic authenticated encryption block cipher mode. CCM is defined for use with 128-bit block ciphers, such as the Advanced Encryption Standard (AES).

## Installation

Add this line to your application's Gemfile:

    gem 'openssl-ccm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openssl-ccm

## Usage

Example:

    require 'openssl/ccm'

    ccm = OpenSSL::CCM.new('AES', 'My16Byte LongKey', 8)

    ciphertext = ccm.encrypt('The message to encrypt', 'The nonce')

    plaintext = ccm.decrypt(ciphertext, 'The nonce')

After initialisation, you can use the object as often you need.
