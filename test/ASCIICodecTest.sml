(**
 * @author YAMATODANI Kiyoshi
 * @copyright 2010, Tohoku University.
 * @version $Id: ASCIICodecTest.sml,v 1.1.2.1 2010/05/11 07:08:04 kiyoshiy Exp $
 *)
structure ASCIICodecTest =
struct

  open SMLUnit.Test

  structure MBCharTest0001 = CodecCharBaseTest0001(ASCIICodec)
  structure MBStringTest0001 = CodecStringBaseTest0001(ASCIICodec)
  structure MBSubstringTest0001 = CodecSubstringBaseTest0001(ASCIICodec)

  fun suite () =
      TestList
      [
        TestLabel ("MBCharTest0001", MBCharTest0001.suite ()),
        TestLabel ("MBStringTest0001", MBStringTest0001.suite ()),
        TestLabel ("MBSubstringTest0001", MBSubstringTest0001.suite ())
      ]

end