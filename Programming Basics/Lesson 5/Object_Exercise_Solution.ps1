# First look at the code to see if you understand the structure. Then go to the test class at the bottom of the file and read Test 1.
# It will give you instruction on which segments of code to write


# Name: Album
# Variables: [String] name, [String] artist, songs[]
# Constructors: Album(iname, iartist) 
class Album{
# Test 1 - Step 1: Create Class Variables to hold values needed for an album.  
# These values will be reflected in the header of the class

    [String] $name
    [String] $artist
    $songs = @()


    Album($iname, $iartist){
    # Test 1 - Step 2: Use this constructor to set the values of name and artist in the class variables 

        $this.name = $iname
        $this.artist = $iartist

    }

    addSong([String] $iname){
    # Test 3 - Step 1 
    # Update the array of songs with the new song to be added
        $this.songs += $iname

    }

    [String] getSong([int] $trackNumber){
    # Return the song that corresponds to the trackNumber parameter

        return $this.songs[$trackNumber+1]

    }

    # Returns the type of album this is using the number of songs
    [String] albumType(){
    # Test 3 - Step 2
        
        # if the number of songs is:
        # 1-2 return "Single"
        # 3-6 return "Mini Album"
        # 7+ return "Full Album"
        # Some other number return "Error, Invalid Number of Songs"
        
        $type = ""
        $i = $this.songs.Length

        if($i -eq 1 -or $i -eq 2){
            $type = "Single"
        }elseif($i -gt 2 -and $i -lt 7){
            $type = "Mini Album"
        }elseif($i -gt 6){
            $type = "Full Album"
        }else{
            $type = "Error, Invalid Number of Songs"
        }



        return $type
    }

    # Prints a summary of the album class instance
    summarize(){
        # This is a prebuilt toString function, normally we would override the toString function but we won't cover overriding here
        # Test 3 - Step 3
        # Read through this code to understand how it prints and relies on other values in the class
        
        write-host("`nTitle: " + $this.name)
        write-host("Artist: " + $this.artist)
        write-host("Album Type: " + $this.albumType())
        write-host("`nSongs: ")
        for($i=1; $i -le $this.songs.Length; $i++){
            write-host([String]$i + ". " + $this.songs[$i-1])

        }
    }
   
}


# Name: Artist
# Variables: [String] name, albums[]
# Constructors: Artist(iname)
class Artist{
# Test 2 - Step 1
# Create the class variables as stated in the class header

    [String] $name
    $albums = @()
    
    Artist($iname){
    # Test 2 - Step 2
    # Set the class variables equal to the parameters in the constructor

        $this.name = $iname
    
    }

    addAlbum($ialbum){
    # add an album to the album list
        $this.albums += $ialbum
    }
   
   summarize(){
   # Another completed method, make sure understand it and how it prints. This is how a lot of code is written as it makes references to other classes.
   # Normally we wouldn't reference a class variable directly, but rather make a call to a method. It is unsafe to be able to change variables directly
        write-host("Name: " + $this.name)
        write-host("Number of Albums: " + $this.albums.Length)
        $temp = 0
        for($i=1; $i -le $this.albums.Length; $i++){
            $temp += $this.albums[$i-1].songs.Length
            write-host([String]$i + ". " + $this.albums[$i-1].name)
        }
        write-host("Total Songs: " + $temp)
   }

}



class tester {

    # This test looks at the Album Constructor and the Album Class Variables
    test1(){
        
        $t1Album = [Album]::new("The Dark Side of the Moon", "Pink Floyd")
        
        Write-Host("`nTest 1: `nExpected Output: `nArtist: Pink Floyd `nAlbum: The Dark Side of the Moon")

        Write-Host("`nYour Output:`nArtist: " + $t1Album.artist + "`nAlbum: " + $t1Album.name)

    }



   # This test looks at the Artist Constructor
    test2(){

        $t2Artist = [Artist]::new("Unknown Artist")

        Write-Host("`nTest 2: `nExpected Output: `nArtist Name: Unknown Artist`nNumber of Albums: 0")

        Write-Host("`nYour Output:`nArtist Name: " + $t2Artist.name + "`nNumber of Albums: " + $t2Artist.albums.Length)

    }

    # This test looks at the addSong(), albumType(), and Summarize() methods in the Album Class
    test3(){
        
        Write-Host("`nTest 3: ")

        Write-host("`nExpected Results: `n`nTitle: Summer Nights `nArtist: Twice `nAlbum Type: Mini Album")
        Write-host("`nSongs: `n1. Dance The Night Away `n2. CHILLAX `n3. Shot Thru The Heart")

        Write-Host("`nYour Output:")

        $test3a = [Album]::new("Summer Nights", "Twice")
        $test3a.addSong("Dance The Night Away")
        $test3a.addSong("CHILLAX")
        $test3a.addSong("Shot Thru The Heart")

        $test3a.summarize()
      

    }

    # This test the addAlbum, and summarize methods in the Artist Class
    test4(){

        Write-host("`nTest 4: `nExpected Output:`nName: Maluma`nNumber of Albums: 2`n1. Fame`n2. 11:11`nTotal Songs: 2`n")

        Write-host("Your Output:`n")

        $t4Artist = [Artist]::new("Maluma")
        $t4Album1 = [Album]::new("Fame", "Maluma")
        $t4Album1.addSong("Felices Los 4")
        $t4Album2 = [Album]::new("11:11", "Maluma")
        $t4Album2.addSong("11PM")
        $t4Artist.addAlbum($t4Album1)
        $t4Artist.addAlbum($t4Album2)
        $t4Artist.summarize()

    }

    #
    irun(){
        #$this.test1()

        $a = Read-Host("`nEnter Test Number you would like to run (1-4, 0 to Exit)")

        switch($a){

            0 {exit}

            1{$this.test1(); break}

            2{$this.test2(); break}

            3{$this.test3(); break}

            4{$this.test4(); break}
            
        }

        $this.irun()
    }

    #
    tester(){

    }

}

$test = [tester]::new()
$test.irun()