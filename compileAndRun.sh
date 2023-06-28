
clear

echo "Creating build folder"
mkdir build

echo "Calling javac command"
javac src/pack1/TheApp.java -cp "src" -d build

echo "Writing to manifest.mf" #sets the main method class to run
echo "Main-Class: pack1.TheApp" > build/manifest.mf

echo "Calling jar command"
jar cvfm build/TheApp.jar build/manifest.mf -C build .

echo "Calling java command to run the jar file"
java -jar build/TheApp.jar