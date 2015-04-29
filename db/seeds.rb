Eventtype.create!([
  {id: 1, event_type: "Default"},
  {id: 2, event_type: "Training"},
  {id: 3, event_type: "Singing"},
  {id: 4, event_type: "Dancing"},
  {id: 5, event_type: "Cooking"},
  {id: 6, event_type: "Panting"},
  {id: 7, event_type: "Teaching"},
  {id: 8, event_type: "Reading"},
  {id: 9, event_type: "Playing"},
  {id: 10, event_type: "Swimming"}
])


Eventtopic.create!([
 {id: 1, event_topic: "Default"},
 {id: 2, event_topic: "Music"},
 {id: 3, event_topic: "Cricket"},
 {id: 4, event_topic: "Books"},
 {id: 5, event_topic: "Foods"},
 {id: 6, event_topic: "Sounds"},
 {id: 7, event_topic: "Boat"},
 {id: 8, event_topic: "Air"},
 {id: 9, event_topic: "Cloths"},
 {id: 10, event_topic: "others"}
])

Role.create!([
 {id: 1, name: "superadmin"},
 {id: 2, name: "admin"},
 {id: 3, name: "user"}
])

Country.seed_once(:id,
  { :id => 1, :name => "Afghanistan", :code => "AF" },
  { :id => 2, :name => "Aland Islands", :code => "AX" },
  { :id => 3, :name => "Albania", :code => "AL" },
  { :id => 4, :name => "Algeria", :code => "DZ" },
  { :id => 5, :name => "American Samoa", :code => "AS" },
  { :id => 6, :name => "Andorra", :code => "AD" },
  { :id => 7, :name => "Angola", :code => "AO" },
  { :id => 8, :name => "Anguilla", :code => "AI" },
  { :id => 9, :name => "Antarctica", :code => "AQ" },
  { :id => 10, :name => "Antigua and Barbuda", :code => "AG" },
  { :id => 11, :name => "Argentina", :code => "AR" },
  { :id => 12, :name => "Armenia", :code => "AM" },
  { :id => 13, :name => "Aruba", :code => "AW" },
  { :id => 14, :name => "Australia", :code => "AU" },
  { :id => 15, :name => "Austria", :code => "AT" },
  { :id => 16, :name => "Azerbaijan", :code => "AZ" },
  { :id => 17, :name => "Bahamas", :code => "BS" },
  { :id => 18, :name => "Bahrain", :code => "BH" },
  { :id => 19, :name => "Bangladesh", :code => "BD" },
  { :id => 20, :name => "Barbados", :code => "BB" },
  { :id => 21, :name => "Belarus", :code => "BY" },
  { :id => 22, :name => "Belgium", :code => "BE" },
  { :id => 23, :name => "Belize", :code => "BZ" },
  { :id => 24, :name => "Benin", :code => "BJ" },
  { :id => 25, :name => "Bermuda", :code => "BM" },
  { :id => 26, :name => "Bhutan", :code => "BT" },
  { :id => 27, :name => "Bolivia", :code => "BO" },
  { :id => 28, :name => "Bosnia and Herzegovina", :code => "BA" },
  { :id => 29, :name => "Botswana", :code => "BW" },
  { :id => 30, :name => "Bouvet Island", :code => "BV" },
  { :id => 31, :name => "Brazil", :code => "BR" },
  { :id => 32, :name => "British Indian Ocean Territory", :code => "IO" },
  { :id => 33, :name => "Brunei Darussalam", :code => "BN" },
  { :id => 34, :name => "Bulgaria", :code => "BG" },
  { :id => 35, :name => "Burkina Faso", :code => "BF" },
  { :id => 36, :name => "Burundi", :code => "BI" },
  { :id => 37, :name => "Cambodia", :code => "KH" },
  { :id => 38, :name => "Cameroon", :code => "CM" },
  { :id => 39, :name => "Canada", :code => "CA" },
  { :id => 40, :name => "Cape Verde", :code => "CV" },
  { :id => 41, :name => "Cayman Islands", :code => "KY" },
  { :id => 42, :name => "Central African Republic", :code => "CF" },
  { :id => 43, :name => "Chad", :code => "TD" },
  { :id => 44, :name => "Chile", :code => "CL" },
  { :id => 45, :name => "China", :code => "CN" },
  { :id => 46, :name => "Christmas Island", :code => "CX" },
  { :id => 47, :name => "Cocos (Keeling) Islands", :code => "CC" },
  { :id => 48, :name => "Colombia", :code => "CO" },
  { :id => 49, :name => "Comoros", :code => "KM" },
  { :id => 50, :name => "Congo", :code => "CG" },
  { :id => 51, :name => "Congo, The Democratic Republic of The", :code => "CD" },
  { :id => 52, :name => "Cook Islands", :code => "CK" },
  { :id => 53, :name => "Costa Rica", :code => "CR" },
  { :id => 54, :name => "Cote D'ivoire", :code => "CI" },
  { :id => 55, :name => "Croatia", :code => "HR" },
  { :id => 56, :name => "Cuba", :code => "CU" },
  { :id => 57, :name => "Cyprus", :code => "CY" },
  { :id => 58, :name => "Czech Republic", :code => "CZ" },
  { :id => 59, :name => "Denmark", :code => "DK" },
  { :id => 60, :name => "Djibouti", :code => "DJ" },
  { :id => 61, :name => "Dominica", :code => "DM" },
  { :id => 62, :name => "Dominican Republic", :code => "DO" },
  { :id => 63, :name => "Ecuador", :code => "EC" },
  { :id => 64, :name => "Egypt", :code => "EG" },
  { :id => 65, :name => "El Salvador", :code => "SV" },
  { :id => 66, :name => "Equatorial Guinea", :code => "GQ" },
  { :id => 67, :name => "Eritrea", :code => "ER" },
  { :id => 68, :name => "Estonia", :code => "EE" },
  { :id => 69, :name => "Ethiopia", :code => "ET" },
  { :id => 70, :name => "Falkland Islands (Malvinas)", :code => "FK" },
  { :id => 71, :name => "Faroe Islands", :code => "FO" },
  { :id => 72, :name => "Fiji", :code => "FJ" },
  { :id => 73, :name => "Finland", :code => "FI" },
  { :id => 74, :name => "France", :code => "FR" },
  { :id => 75, :name => "French Guiana", :code => "GF" },
  { :id => 76, :name => "French Polynesia", :code => "PF" },
  { :id => 77, :name => "French Southern Territories", :code => "TF" },
  { :id => 78, :name => "Gabon", :code => "GA" },
  { :id => 79, :name => "Gambia", :code => "GM" },
  { :id => 80, :name => "Georgia", :code => "GE" },
  { :id => 81, :name => "Germany", :code => "DE" },
  { :id => 82, :name => "Ghana", :code => "GH" },
  { :id => 83, :name => "Gibraltar", :code => "GI" },
  { :id => 84, :name => "Greece", :code => "GR" },
  { :id => 85, :name => "Greenland", :code => "GL" },
  { :id => 86, :name => "Grenada", :code => "GD" },
  { :id => 87, :name => "Guadeloupe", :code => "GP" },
  { :id => 88, :name => "Guam", :code => "GU" },
  { :id => 89, :name => "Guatemala", :code => "GT" },
  { :id => 90, :name => "Guernsey", :code => "GG" },
  { :id => 91, :name => "Guinea", :code => "GN" },
  { :id => 92, :name => "Guinea-bissau", :code => "GW" },
  { :id => 93, :name => "Guyana", :code => "GY" },
  { :id => 94, :name => "Haiti", :code => "HT" },
  { :id => 95, :name => "Heard Island and Mcdonald Islands", :code => "HM" },
  { :id => 96, :name => "Holy See (Vatican City State)", :code => "VA" },
  { :id => 97, :name => "Honduras", :code => "HN" },
  { :id => 98, :name => "Hong Kong", :code => "HK" },
  { :id => 99, :name => "Hungary", :code => "HU" },
  { :id => 100, :name => "Iceland", :code => "IS" },
  { :id => 101, :name => "India", :code => "IN" },
  { :id => 102, :name => "Indonesia", :code => "ID" },
  { :id => 103, :name => "Iran, Islamic Republic of", :code => "IR" },
  { :id => 104, :name => "Iraq", :code => "IQ" },
  { :id => 105, :name => "Ireland", :code => "IE" },
  { :id => 106, :name => "Isle of Man", :code => "IM" },
  { :id => 107, :name => "Israel", :code => "IL" },
  { :id => 108, :name => "Italy", :code => "IT" },
  { :id => 109, :name => "Jamaica", :code => "JM" },
  { :id => 110, :name => "Japan", :code => "JP" },
  { :id => 111, :name => "Jersey", :code => "JE" },
  { :id => 112, :name => "Jordan", :code => "JO" },
  { :id => 113, :name => "Kazakhstan", :code => "KZ" },
  { :id => 114, :name => "Kenya", :code => "KE" },
  { :id => 115, :name => "Kiribati", :code => "KI" },
  { :id => 116, :name => "Korea, Democratic People's Republic of", :code => "KP" },
  { :id => 117, :name => "Korea, Republic of", :code => "KR" },
  { :id => 118, :name => "Kuwait", :code => "KW" },
  { :id => 119, :name => "Kyrgyzstan", :code => "KG" },
  { :id => 120, :name => "Lao People's Democratic Republic", :code => "LA" },
  { :id => 121, :name => "Latvia", :code => "LV" },
  { :id => 122, :name => "Lebanon", :code => "LB" },
  { :id => 123, :name => "Lesotho", :code => "LS" },
  { :id => 124, :name => "Liberia", :code => "LR" },
  { :id => 125, :name => "Libyan Arab Jamahiriya", :code => "LY" },
  { :id => 126, :name => "Liechtenstein", :code => "LI" },
  { :id => 127, :name => "Lithuania", :code => "LT" },
  { :id => 128, :name => "Luxembourg", :code => "LU" },
  { :id => 129, :name => "Macao", :code => "MO" },
  { :id => 130, :name => "Macedonia, The Former Yugoslav Republic of", :code => "MK" },
  { :id => 131, :name => "Madagascar", :code => "MG" },
  { :id => 132, :name => "Malawi", :code => "MW" },
  { :id => 133, :name => "Malaysia", :code => "MY" },
  { :id => 134, :name => "Maldives", :code => "MV" },
  { :id => 135, :name => "Mali", :code => "ML" },
  { :id => 136, :name => "Malta", :code => "MT" },
  { :id => 137, :name => "Marshall Islands", :code => "MH" },
  { :id => 138, :name => "Martinique", :code => "MQ" },
  { :id => 139, :name => "Mauritania", :code => "MR" },
  { :id => 140, :name => "Mauritius", :code => "MU" },
  { :id => 141, :name => "Mayotte", :code => "YT" },
  { :id => 142, :name => "Mexico", :code => "MX" },
  { :id => 143, :name => "Micronesia, Federated States of", :code => "FM" },
  { :id => 144, :name => "Moldova, Republic of", :code => "MD" },
  { :id => 145, :name => "Monaco", :code => "MC" },
  { :id => 146, :name => "Mongolia", :code => "MN" },
  { :id => 147, :name => "Montenegro", :code => "ME" },
  { :id => 148, :name => "Montserrat", :code => "MS" },
  { :id => 149, :name => "Morocco", :code => "MA" },
  { :id => 150, :name => "Mozambique", :code => "MZ" },
  { :id => 151, :name => "Myanmar", :code => "MM" },
  { :id => 152, :name => "Namibia", :code => "NA" },
  { :id => 153, :name => "Nauru", :code => "NR" },
  { :id => 154, :name => "Nepal", :code => "NP" },
  { :id => 155, :name => "Netherlands", :code => "NL" },
  { :id => 156, :name => "Netherlands Antilles", :code => "AN" },
  { :id => 157, :name => "New Caledonia", :code => "NC" },
  { :id => 158, :name => "New Zealand", :code => "NZ" },
  { :id => 159, :name => "Nicaragua", :code => "NI" },
  { :id => 160, :name => "Niger", :code => "NE" },
  { :id => 161, :name => "Nigeria", :code => "NG" },
  { :id => 162, :name => "Niue", :code => "NU" },
  { :id => 163, :name => "Norfolk Island", :code => "NF" },
  { :id => 164, :name => "Northern Mariana Islands", :code => "MP" },
  { :id => 165, :name => "Norway", :code => "NO" },
  { :id => 166, :name => "Oman", :code => "OM" },
  { :id => 167, :name => "Pakistan", :code => "PK" },
  { :id => 168, :name => "Palau", :code => "PW" },
  { :id => 169, :name => "Palestinian Territory, Occupied", :code => "PS" },
  { :id => 170, :name => "Panama", :code => "PA" },
  { :id => 171, :name => "Papua New Guinea", :code => "PG" },
  { :id => 172, :name => "Paraguay", :code => "PY" },
  { :id => 173, :name => "Peru", :code => "PE" },
  { :id => 174, :name => "Philippines", :code => "PH" },
  { :id => 175, :name => "Pitcairn", :code => "PN" },
  { :id => 176, :name => "Poland", :code => "PL" },
  { :id => 177, :name => "Portugal", :code => "PT" },
  { :id => 178, :name => "Puerto Rico", :code => "PR" },
  { :id => 179, :name => "Qatar", :code => "QA" },
  { :id => 180, :name => "Reunion", :code => "RE" },
  { :id => 181, :name => "Romania", :code => "RO" },
  { :id => 182, :name => "Russian Federation", :code => "RU" },
  { :id => 183, :name => "Rwanda", :code => "RW" },
  { :id => 184, :name => "Saint Helena", :code => "SH" },
  { :id => 185, :name => "Saint Kitts and Nevis", :code => "KN" },
  { :id => 186, :name => "Saint Lucia", :code => "LC" },
  { :id => 187, :name => "Saint Pierre and Miquelon", :code => "PM" },
  { :id => 188, :name => "Saint Vincent and The Grenadines", :code => "VC" },
  { :id => 189, :name => "Samoa", :code => "WS" },
  { :id => 190, :name => "San Marino", :code => "SM" },
  { :id => 191, :name => "Sao Tome and Principe", :code => "ST" },
  { :id => 192, :name => "Saudi Arabia", :code => "SA" },
  { :id => 193, :name => "Senegal", :code => "SN" },
  { :id => 194, :name => "Serbia", :code => "RS" },
  { :id => 195, :name => "Seychelles", :code => "SC" },
  { :id => 196, :name => "Sierra Leone", :code => "SL" },
  { :id => 197, :name => "Singapore", :code => "SG" },
  { :id => 198, :name => "Slovakia", :code => "SK" },
  { :id => 199, :name => "Slovenia", :code => "SI" },
  { :id => 200, :name => "Solomon Islands", :code => "SB" },
  { :id => 201, :name => "Somalia", :code => "SO" },
  { :id => 202, :name => "South Africa", :code => "ZA" },
  { :id => 203, :name => "South Georgia and The South Sandwich Islands", :code => "GS" },
  { :id => 204, :name => "Spain", :code => "ES" },
  { :id => 205, :name => "Sri Lanka", :code => "LK" },
  { :id => 206, :name => "Sudan", :code => "SD" },
  { :id => 207, :name => "Suriname", :code => "SR" },
  { :id => 208, :name => "Svalbard and Jan Mayen", :code => "SJ" },
  { :id => 209, :name => "Swaziland", :code => "SZ" },
  { :id => 210, :name => "Sweden", :code => "SE" },
  { :id => 211, :name => "Switzerland", :code => "CH" },
  { :id => 212, :name => "Syrian Arab Republic", :code => "SY" },
  { :id => 213, :name => "Taiwan", :code => "TW" },
  { :id => 214, :name => "Tajikistan", :code => "TJ" },
  { :id => 215, :name => "Tanzania, United Republic of", :code => "TZ" },
  { :id => 216, :name => "Thailand", :code => "TH" },
  { :id => 217, :name => "Timor-leste", :code => "TL" },
  { :id => 218, :name => "Togo", :code => "TG" },
  { :id => 219, :name => "Tokelau", :code => "TK" },
  { :id => 220, :name => "Tonga", :code => "TO" },
  { :id => 221, :name => "Trinidad and Tobago", :code => "TT" },
  { :id => 222, :name => "Tunisia", :code => "TN" },
  { :id => 223, :name => "Turkey", :code => "TR" },
  { :id => 224, :name => "Turkmenistan", :code => "TM" },
  { :id => 225, :name => "Turks and Caicos Islands", :code => "TC" },
  { :id => 226, :name => "Tuvalu", :code => "TV" },
  { :id => 227, :name => "Uganda", :code => "UG" },
  { :id => 228, :name => "Ukraine", :code => "UA" },
  { :id => 229, :name => "United Arab Emirates", :code => "AE" },
  { :id => 230, :name => "United Kingdom", :code => "GB" },
  { :id => 231, :name => "United States", :code => "US" },
  { :id => 232, :name => "United States Minor Outlying Islands", :code => "UM" },
  { :id => 233, :name => "Uruguay", :code => "UY" },
  { :id => 234, :name => "Uzbekistan", :code => "UZ" },
  { :id => 235, :name => "Vanuatu", :code => "VU" },
  { :id => 236, :name => "Venezuela", :code => "VE" },
  { :id => 237, :name => "Viet Nam", :code => "VN" },
  { :id => 238, :name => "Virgin Islands, British", :code => "VG" },
  { :id => 239, :name => "Virgin Islands, U.S.", :code => "VI" },
  { :id => 240, :name => "Wallis and Futuna", :code => "WF" },
  { :id => 241, :name => "Western Sahara", :code => "EH" },
  { :id => 242, :name => "Yemen", :code => "YE" },
  { :id => 243, :name => "Zambia", :code => "ZM" },
  { :id => 244, :name => "Zimbabwe", :code => "ZW" }
)
