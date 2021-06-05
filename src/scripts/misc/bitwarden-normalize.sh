import json
import sys

if __name__ == "__main__":
    if not sys.argv[1]:
        print("No json file specified, quitting.")
        sys.exit(0)

    with open(sys.argv[1]) as f:
        data = json.load(f)

        csvdata = [["type","folder","favorite","name","username","password","uris","notes","totp"]]

        for i in data["items"]:
            vnotes = "" if not i["notes"] or not "notes" in i else i["notes"]
            vfolder = "" if not i["folderId"] else str(i["folderId"])
            vuris = []
            vusername = ""
            vpassword = ""
            vtotp = ""
            if "login" in i:
                vusername = "" if not i["login"].get("username") else i["login"].get("username")
                vpassword = "" if not i["login"].get("password") else i["login"].get("password")
                vuris = [] if not i["login"].get("uris") else i["login"].get("uris")
                vtotp = "" if not i["login"].get("totp") else i["login"].get("totp")
            
            csvdata.append(
                [
                    i["type"],
                    i["folderId"],
                    str(i["favorite"]),
                    i["name"],
                    vusername,
                    vpassword,
                    json.dumps(vuris),
                    vnotes,
                    vtotp
                ]
            )

        with open('out.json', 'w') as f2:
            json.dump(csvdata, f2, indent=2)
