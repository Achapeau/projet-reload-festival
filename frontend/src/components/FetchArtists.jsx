import { useState, useEffect } from "react";
import axios from "axios";

// import data from "../JSON/artistArray.json";

function FetchArtists() {
  const credentials = {
    clientId: import.meta.env.VITE_SPOTIFY_ID,
    clientSecret: import.meta.env.VITE_SPOTIFY_SECRET,
  };
  const data = [
    {
      "name": "Armin van Buuren",
      "spotifyID": "0SfsnGyD8FpIN4U4WCkBZ5?si=EqXJYFz0QXu7HQFvoQeH3g"
    },
    {
      "name": "Calvin Harris",
      "spotifyID": "7CajNmpbOovFoOoasH2HaY?si=rftwCfCiQ2644BJNG5CBqw"
    },
    {
      "name": "Hardwell",
      "spotifyID": "6BrvowZBreEkXzJQMpL174?si=lAxBfOoZSg-A9CfHoNn5Pw"
    },
    {
      "name": "Illenium",
      "spotifyID": "45eNHdiiabvmbp4erw26rg?si=54PDCW1ZSJu9Bvt5DyKrmQ"
    },
    {
      "name": "Kygo",
      "spotifyID": "23fqKkggKUBHNkbKtXEls4?si=lziiqZcoShu4nl69dxV5LA"
    },
    {
      "name": "Martin Garrix",
      "spotifyID": "60d24wfXkVzDSfLS6hyCjZ?si=NUPeLfuhSXyawcDFSkYbAA"
    },
    {
      "name": "Nicky Romeo",
      "spotifyID": "5ChF3i92IPZHduM7jN3dpg?si=-KhJn0GJSNKhTFoi5-iAFA"
    },
    {
      "name": "Quintino",
      "spotifyID": "1V3VTM7VspiQjcmRhC010n?si=-i5JPt9ESpqA9oe4-NxO8g"
    },
    {
      "name": "Skrillex",
      "spotifyID": "5he5w2lnU9x7JFhnwcekXX?si=zMiZiMFOTS-epBhn4HT2FA"
    },
    {
      "name": "Tiesto",
      "spotifyID": "2o5jDhtHVPhrJdv3cEQ99Z?si=RZk0ocHDTICAJl2ZUv3TGQ"
    },
    {
      "name": "Afrojack",
      "spotifyID": "4D75GcNG95ebPtNvoNVXhz?si=zht2ugmpTGal-V1-m7-IWA"
    },
    {
      "name": "Benny Benassi",
      "spotifyID": "4Ws2otunReOa6BbwxxpCt6?si=CwcQXyn3T6636Nd6Z562jg"
    },
    {
      "name": "Jax Jones",
      "spotifyID": "4Q6nIcaBED8qUel8bBx6Cr?si=dekA1cG8Qum05vCuYp7IOQ"
    },
    {
      "name": "Paul Kalkbrenner",
      "spotifyID": "0rasA5Z5h1ITtHelCpfu9R?si=z21pcjlcTYC44Vc_qhfYbg"
    },
    {
      "name": "Disclosure",
      "spotifyID": "6nS5roXSAGhTGr34W6n7Et?si=LC0xJHOvTpOsAs-uhjK5jA"
    },
    {
      "name": "Excision",
      "spotifyID": "5FKchcZpQOkqFvXBj1aCvb?si=AzP8x83bQFCGciO9F6HXxw"
    },
    {
      "name": "Deadmau5",
      "spotifyID": "2CIMQHirSU0MQqyYHq0eOx?si=ysmEZxqpS5KvshiGe7psyQ"
    },
    {
      "name": "Dr. Peacock",
      "spotifyID": "4RbUYWWjEBb4umwqakOEd3?si=ZEUp6ogSTIi37LgsDOm3jg"
    },
    {
      "name": "Charlotte de Witte",
      "spotifyID": "1lJhME1ZpzsEa5M0wW6Mso?si=Xh0eD9qyRHaMzUznf4Mq6w"
    },
    {
      "name": "DJ Snake",
      "spotifyID": "540vIaP2JwjQb9dm3aArA4?si=av5boBCtR92R4TrDg8tIKA"
    },
    {
      "name": "Dash Berlin",
      "spotifyID": "1xT5p0VBpnZDrvVSjX9sri?si=dQLI9JLvROedIiqHkmkaVQ"
    },
    {
      "name": "Nora En Pure",
      "spotifyID": "24DO0PijjITGIEWsO8XaPs?si=yofVoroBTFa0PvSZX02sBA"
    },
    {
      "name": "Marshmello",
      "spotifyID": "64KEffDW9EtZ1y2vBYgq8T?si=N_jT8hZ7RRmK4C3k6HSh_g"
    },
    {
      "name": "Zedd",
      "spotifyID": "2qxJFvFYMEDqd7ui6kSAcq?si=N5fJ_gpsSLuuQtsR990zOQ"
    },
    {
      "name": "Alesso",
      "spotifyID": "4AVFqumd2ogHFlRbKIjp1t?si=6gQBL7RrS06Qnf7fA1cDmA"
    },
    {
      "name": "Major Lazer",
      "spotifyID": "738wLrAtLtCtFOLvQBXOXp?si=xugwuEucTNqIwyny7jO3Tw"
    },
    {
      "name": "The Chainsmokers",
      "spotifyID": "69GGBxA162lTqCwzJG5jLp?si=QzoVbm9qQh-ErBcOFiXQgw"
    },
    {
      "name": "Sickick",
      "spotifyID": "3NR7hAacOhmcztWvD7vJfS?si=HEtb3AnoQjmlN5FH0-4_Ng"
    },
    {
      "name": "Deorro",
      "spotifyID": "6VD4UEUPvtsemqD3mmTqCR?si=2lXwIvmhQpGLk2rbr_FWkg"
    },
    {
      "name": "Timmy Trumpet",
      "spotifyID": "0CbeG1224FS58EUx4tPevZ?si=I7sw_QHER466qOpXJdNIfA"
    },
    {
      "name": "Sound Of Legend",
      "spotifyID": "3g9yyIlJ0sIunQWJLmIYhn?si=t79AmoPYSCiiZCHLUmYRdA"
    },
    {
      "name": "Da Tweekaz",
      "spotifyID": "6UOk7DmvqlzWmo6gjhZvn6?si=tEniCKonR3GywLsgcwDDUA"
    },
    {
      "name": "Sub Zero Project",
      "spotifyID": "4f0OXMMSxr0r8Ztx6CdpAl?si=_TIEFF-TRjyAn15z245fmg"
    },
    {
      "name": "R3hab",
      "spotifyID": "6cEuCEZu7PAE9ZSzLLc2oQ?si=hZVX3d_UTFWH_EqItq3VmA"
    },
    {
      "name": "Ummet Ozcan",
      "spotifyID": "7e1BNCygl2Gf7CX8LrByPv?si=i7LqRwE6TP-l7Ei6tS6Zkw"
    },
    {
      "name": "Les Gordon",
      "spotifyID": "4UqXejsLj7uwZmzQ9vkmg8?si=t5ZdQz9ITAepM8sqINPZLQ"
    },
    {
      "name": "NTO",
      "spotifyID": "7ry8L53T4oJtSIogGYuioq?si=8wOBLP44SOuzaN4wh-_dZA"
    },
    {
      "name": "Nhyx",
      "spotifyID": "15hYbx7vg01TZFFgipPAHm?si=3o_REbcOTF-EhdKfDh8MUA"
    },
    {
      "name": "Alle Farben",
      "spotifyID": "61ipISvUVa5LkJlKZnm3Oo?si=3gPsYu94R-C-eHsrCw7tqw"
    },
    {
      "name": "Marcapasos",
      "spotifyID": "6QKeymKBlijyJhfOi1smqB?si=f81UPopxRiSA4XPBMTF5lw"
    }
  ];
  

  const [artists, setArtists] = useState([]);

  useEffect(() => {
    axios
      .post(
        "https://accounts.spotify.com/api/token",
        {
          grant_type: "client_credentials",
          client_id: credentials.clientId,
          client_secret: credentials.clientSecret,
        },
        {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        }
      )
      .then((res) => {
        const requests = data.map((item) =>
          axios.get(`https://api.spotify.com/v1/artists/${item.spotifyID}`, {
            headers: {
              Authorization: `Bearer ${res.data.access_token}`,
            },
          })
          );
          console.log("artiste?", request[0])

        axios
          .all(requests)
          .then((responses) => {
            setArtists(responses.map((response) => response.data));
          })
          .catch((error) => {
            console.error(error);
          });
      })
      .catch((error) => {
        console.error(error);
      });
  }, []);

  return artists;
}

export default FetchArtists;
