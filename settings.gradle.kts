rootProject.name = "schneider"

include("backoffice-api")
include("batch")
include("common")
include("enums")
include("eule-db")
include("fasan-db")
include("front-api")

project(":backoffice-api").projectDir = File("schneider-backoffice-api")
project(":batch").projectDir = File("schneider-batch")
project(":common").projectDir = File("schneider-common")
project(":enums").projectDir = File("schneider-enums")
project(":eule-db").projectDir = File("schneider-eule-db")
project(":fasan-db").projectDir = File("schneider-fasan-db")
project(":front-api").projectDir = File("schneider-front-api")
