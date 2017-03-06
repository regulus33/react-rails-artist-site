# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url_array = [
"https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15168803_10211834148357572_50662368744558970_o.jpg?oh=473b7ebb812d1089420baf6698833a54&oe=59430C56",
"https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15156833_10211834148997588_7571918130063744167_o.jpg?oh=9618c9b518528bf8897cd76eb3174775&oe=592B6918",
'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15111062_10211834149517601_2444673446019210328_o.jpg?oh=6400d28ee8471869f64b72cfe4fe95fc&oe=59730F5A', 
'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15000212_10211834150357622_8940180790286153756_o.jpg?oh=76db5f86a6c3ab3f1b32e50654ee1274&oe=592FCD3D',
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146013898963_5238497_n.jpg?oh=c842be4e6280869544f1179ec3464256&oe=59282867",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146013858962_5937505_n.jpg?oh=4f601148b5e5404d82a6a18a52b24fbe&oe=5924CF2A",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146013818961_4283426_n.jpg?oh=c717bcb3123e4c394a0503085fea3634&oe=59338EA7",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145596568530_2097444_n.jpg?oh=f2cc0c101b91321b26af48d9570f0d1c&oe=59342FF2",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145596528529_7824085_n.jpg?oh=743e1da1f408f701035c5eb1e49ff66f&oe=592DE0B3",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145595608506_3402557_n.jpg?oh=242daf6a30112af126eabbba03eb01a0&oe=5965D2B3",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145595568505_4655174_n.jpg?oh=3396acb2d6944c5a8e851fc08e710da0&oe=59280803",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145595528504_3937721_n.jpg?oh=15398b014c69e685418f3db65816b91e&oe=5933BD17",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1145595488503_5744550_n.jpg?oh=1515f23738cceda58144af8c7bd9b98f&oe=5965CA57",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146017659057_1432289_n.jpg?oh=a2a0b44623b81465be204236c7cb4a16&oe=59738D87",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146017699058_5751126_n.jpg?oh=ae5564382921d26e10ff0568e24b70c2&oe=59326BBF",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146017739059_4452162_n.jpg?oh=fb5fbc7a1be7eba2323e04133d624550&oe=593243FA",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/4155_1146017779060_337047_n.jpg?oh=956d1fe4bedde13962ae8a5c36d0c798&oe=5932AB34",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1935754_1211078605540_1590844_n.jpg?oh=959f54600cb77035f5a48ee2bc8ca523&oe=596E2CDD",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-0/p206x206/1935754_1211078645541_2677389_n.jpg?oh=85bcf24710521573218e2e20b03f548f&oe=592EDF66",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1935754_1211078685542_1315068_n.jpg?oh=ade0939d1ef067fefd1923a81ebc0057&oe=59321539",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1935752_1213533386908_362866_n.jpg?oh=0b4bda479f171e828ff72941c37824fa&oe=592D211B",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-0/p206x206/12733_1248832709369_1370847_n.jpg?oh=28304368255d248d174e6b364e33fea5&oe=596EE6FC",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/24589_1401756532369_8284336_n.jpg?oh=39c42f25bc643aa00e4c4468098f1d94&oe=59314A45",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/421343_3169960016351_1947649052_n.jpg?oh=f08cb026f4fb6beaba5cb1cf43738bfa&oe=592ACDB9",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1045175_10201354279447399_258137299_n.jpg?oh=f1076bb22ca5aa335eb9b9648ac60820&oe=59301226",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1013952_10201354280887435_1451821404_n.jpg?oh=ba3796e9b64d1d42d890945a0eb8d0df&oe=597384E9",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1010743_10201354281887460_1078094339_n.jpg?oh=1e4031def47995869a43121c77fb52fa&oe=5966C188",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1001164_10201354283567502_1006063907_n.jpg?oh=6a7fdb6308c6f3aab392fa4731516944&oe=59274F69",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1044296_10201354284327521_1670465936_n.jpg?oh=687cc662b32e64236d60fa4f2806b0df&oe=596CA249",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/922687_10201354286287570_1737185246_n.jpg?oh=68641b748815002a0bc917af2aded63d&oe=5936319B",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1017189_10201354286327571_1761804636_n.jpg?oh=6685af831b9fb7f29539a2bd4f51f999&oe=5938F996",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1016764_10201354286407573_1822285364_n.jpg?oh=f106c6ae8b1347ddb0ddb80547d9bbfc&oe=59689B9E",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1010642_10201354286847584_1693813716_n.jpg?oh=2b956086311eefad65bcdfba2828519d&oe=5935FED5",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/988665_10201354287007588_10169934_n.jpg?oh=8ee1cd2d6854a515d74d2d599962c8ec&oe=592B187F",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/999240_10201354287287595_1818115314_n.jpg?oh=cc15951d10b6d5e71b72574a277757b0&oe=593C18A7",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1005859_10201354287447599_915433757_n.jpg?oh=aa9c00a57a0d975db09c4c109f0158ef&oe=596EFE44",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1010526_10201354287527601_1497127052_n.jpg?oh=b750df2bbd17636d6955d10b63e0a7c0&oe=5925A446",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/998679_10201354287567602_2085635949_n.jpg?oh=dca0f4650def1c4142774905c66b5fb9&oe=596875FC",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1005399_10201354288047614_1257751870_n.jpg?oh=5249e5e68e0bf7466a366d8e1bc851a5&oe=5936B9DC",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1010525_10201354288127616_2048121806_n.jpg?oh=31a1ee149985c57642f9ef155a981a86&oe=59738D09",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/992842_10201354288367622_1480351491_n.jpg?oh=3e77330ba891f89179afcd6152215db9&oe=59698FC5",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1005125_10201354288607628_1738736988_n.jpg?oh=bffcb38c288503d3a4e0771c6e99ab4f&oe=5967F39D",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1003129_10201354288927636_1842973444_n.jpg?oh=05326200e7cad69778142e6e0d2b3154&oe=59310D85",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/1044304_10201354289127641_1843723206_n.jpg?oh=98ae5d126d76c9a5be5950d80fb5a8c5&oe=5927BC3C",
"https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/983948_10201354289327646_1084021517_n.jpg?oh=fe04e577786f7b14e8f55b22debf771a&oe=5967A5F4"
]

url_array.length.times {|index| Project.create!(title: "Title Of Work", description: "example", url: url_array[index]) }
