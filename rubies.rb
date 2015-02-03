# current =
# [
#     {
#          "Aurelia O'Reilly" => {
#                "phone" => "809.194.0963",
#              "company" => "Ratke, Jerde and Prosacco",
#             "children" => [
#                 "Lafayette"
#             ]
#         },
#         "Elyssa Konopelski" => {
#               "phone" => "(600) 337-4208",
#             "company" => "Powlowski, Kunde and Hammes"
#         }
#     }
# ]
#
#
# puts current[0]["Aurelia O'Reilly"]

# current =
# [[151, -10, 940, [857, 290, -209]]]
#
# puts current[0][0]

#
# current[1]["Brooklyn Lakin"]["children"][1]
# current[1]["Mrs. Shakira Bogan"]["children"][1]
#

current =
[
    {
        "Mrs. Shakira Bogan" => {
               "phone" => "459.480.8357",
             "company" => "Quitzon and Sons",
            "children" => [
                "Jaida"
            ]
        },
             "Mitchell Kuhn" => {
               "phone" => "(699) 103-8972",
             "company" => "Stroman, Streich and Fadel",
            "children" => [
                "Jarrod",
                "Ernie",
                "Scarlett"
            ]
        }
    },
    {
          "Mr. Aniya Nolan" => {
              "phone" => "609.302.5529",
            "company" => "Huels, Medhurst and Stamm"
        },
             "Talia Mayert" => {
               "phone" => "365.509.2276",
             "company" => "Hoppe, Gottlieb and Heidenreich",
            "children" => [
                "Ebony"
            ]
        },
        "Rosetta Kertzmann" => {
              "phone" => "(659) 721-5835",
            "company" => "Walker, Carter and O'Conner"
        }
    },
    {
          "Emanuel Senger" => {
              "phone" => "468.727.9382",
            "company" => "Mante-Dickens"
        },
        "Mariano Eichmann" => {
              "phone" => "609.610.5779",
            "company" => "Tromp LLC"
        }
    }
]

puts current[0]["Mitchell Kuhn"]
