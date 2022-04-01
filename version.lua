local version = "v1.0.0"

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        CheckFrameworkVersion()
    end
end)

function CheckFrameworkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Cjneilson12/Calladmin/version.txt", function(err, text, headers)
        if string.match(text, version) then
            print(" ")
            print("---------- JAIL N' JURY VERSION ----------")
            print("Jail N' Jury is up to date and ready to go!")
            print("Running on Version: " .. version)
            print("https://github.com/itsJarrett/FiveM-JailNJury")
            print("------------------------------------------")
            print(" ")
        else
          print(" ")
          print("---------- JAIL N' JURY VERSION ----------")
          print("Jail N' Jury is not up to date! Please update ASAP!")
          print("Curent Version: " .. version .. " Latest Version: " .. text)
          print("https://github.com/itsJarrett/FiveM-JailNJury")
          print("------------------------------------------")
          print(" ")
        end

    end, "GET", "", {})

end