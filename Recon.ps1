#Automated News reader edit $urlstrings to put in your own sources
clear
Write-Host "
___________.__   .__   __              __   .__                             __                   ___.                    .__          __           .__   
\_   _____/|  |  |__|_/  |_   ____   _/  |_ |  |__ _______   ____  _____  _/  |_    ____  ___.__.\_ |__    ____ _______  |__|  ____ _/  |_   ____  |  |  
 |    __)_ |  |  |  |\   __\_/ __ \  \   __\|  |  \\_  __ \_/ __ \ \__  \ \   __\ _/ ___\<   |  | | __ \ _/ __ \\_  __ \ |  | /    \\   __\_/ __ \ |  |  
 |        \|  |__|  | |  |  \  ___/   |  |  |   Y  \|  | \/\  ___/  / __ \_|  |   \  \___ \___  | | \_\ \\  ___/ |  | \/ |  ||   |  \|  |  \  ___/ |  |__
/_______  /|____/|__| |__|   \___  >  |__|  |___|  /|__|    \___  >(____  /|__|    \___  >/ ____| |___  / \___  >|__|    |__||___|  /|__|   \___  >|____/
        \/                       \/              \/             \/      \/             \/ \/          \/      \/                  \/            \/                                                                                                                            \______/                                                                           
" -ForegroundColor green
$urlString = @(
"https://www.cisa.gov/uscert/ncas/alerts.xml",
"https://feeds.feedburner.com/TheHackersNews",
"https://www.ncsc.gov.uk/api/1/services/v1/all-rss-feed"
"https://www.bleepingcomputer.com/feed/",
"https://gbhackers.com/feed/",
'https://grahamcluley.com/feed/',
'https://threatpost.com/feed/',
'https://krebsonsecurity.com/feed/',
'https://www.darkreading.com/rss.xml',
'http://feeds.feedburner.com/eset/blog',
'https://www.darktrace.com/blog/index.xml',
'https://www.us-cert.gov/ncas/alerts.xml'
'http://www.exploit-monday.com/feeds/posts/default',
'http://ianduffy.ie/index.xml',
'https://www.swordshield.com/feed/',
'http://www.mathyvanhoef.com/feeds/posts/default',
'http://colesec.inventedtheinternet.com/feed/',
'http://blog.portswigger.net/feeds/posts/default',
'https://www.secureworks.com/rss?feed=research',
'http://www.us-cert.gov/channels/techalerts.rdf',
'https://labsblog.f-secure.com/feed/',
'http://taosecurity.blogspot.com/atom.xml',
'http://www.thespanner.co.uk/feed/',
'http://sysadmincasts.com/feed.rss',
'https://www.coalfire.com/Solutions/Coalfire-Labs/The-Coalfire-LABS-Blog?rss=blogs',
'https://d.uijn.nl/feed/',
'https://www.optiv.com/resources/blog/feed',
'https://ctus.io/rss/',
'http://artsploit.blogspot.com/feeds/posts/default?alt=rss',
'http://blog.0x3a.com/rss',
'http://blog.logrhythm.com/feed/',
'https://room362.com/post/index.xml',
'http://www.rvrsh3ll.net/blog/feed/',
'http://feeds.feedburner.com/NetspiBlog',
'https://www.n00py.io/feed/',
'http://www.fireeye.com/blog/feed',
'http://feeds.feedburner.com/GdsSecurityBlog',
'http://www.arneswinnen.net/feed/',
'https://blog.skullsecurity.org/feed',
'http://www.dawgyg.com/rss/',
'http://labofapenetrationtester.blogspot.com/feeds/posts/default',
'http://carnal0wnage.attackresearch.com/rss.xml',
'http://reverse.put.as/feed/',
'http://adsecurity.org/?feed=rss2',
'http://foxglovesecurity.com/feed/',
'http://www.acunetix.com/blog/feed/',
'http://stephensclafani.com/feed/',
'http://feeds.feedburner.com/n0where',
'http://malwaremustdie.blogspot.com/feeds/posts/default',
'http://feeds.feedburner.com/IrongeeksSecuritySite',
'http://www.sixdub.net/?feed=rss2',
'http://r00tsec.blogspot.com/feeds/posts/default',
'http://www.contextis.com/resources/blog/blog.xml',
'http://feeds.trendmicro.com/Anti-MalwareBlog/',
'http://feeds.feedburner.com/OjsRants',
'http://www.sans.org/rr/rss/',
'http://w00tsec.blogspot.com/feeds/posts/default',
'http://www.blackhillsinfosec.com/?feed=rss2',
'http://blog.didierstevens.com/feed/',
'https://warroom.securestate.com/feed/',
'http://sakurity.com/blog/feed.xml',
'http://randywestergren.com/feed/',
'http://bufferovernoah.com/feed/',
'http://sethsec.blogspot.com/feeds/posts/default',
'http://malware.dontneedcoffee.com/feeds/posts/default',
'http://derflounder.wordpress.com/feed/',
'http://www.unix-ninja.com/feed/rss/',
'https://trustfoundry.net/feed/',
'http://www.f-secure.com/weblog/weblog.rdf',
'http://feeds.feedburner.com/SucuriSecurity',
'http://enigma0x3.wordpress.com/feed/',
'https://blog.g0tmi1k.com/atom.xml',
'http://www.viruslist.com/en/rss/weblog',
'https://www.wired.com/category/security/feed/',
'https://feeds.feedburner.com/fortinet/blogs/security-research',
'http://isc.sans.org/rssfeed.xml',
'http://www.bluecoat.com/security/rss',
'http://feeds.feedburner.com/CyberArms'
'https://www.grepular.com/rss',
'http://feeds.feedburner.com/PentestTools',
'http://websec.ca/blog_posts/index.rss',
'http://thinkingmaliciously.blogspot.com/feeds/posts/default',
'https://www.trustedsec.com/feed/',
'http://community.websense.com/blogs/securitylabs/rss.aspx',
'http://g-laurent.blogspot.com/feeds/posts/default',
'https://objective-see.com/rss.xml',
'http://x42.obscurechannel.com/?feed=rss2',
'http://www.harmj0y.net/blog/feed/',
'http://krebsonsecurity.com/feed/',
'http://vrt-sourcefire.blogspot.com/feeds/posts/default',
'http://infamoussecurity.com/?feed=rss2',
'http://www.darkoperator.com/blog/rss.xml',
'http://www.cert.org/blogs/rss.xml',
'http://silentbreaksecurity.com/feed/',
'https://fin1te.net/feed.xml',
'http://googleonlinesecurity.blogspot.com/atom.xml',
'http://erratasec.blogspot.com/feeds/posts/default',
'http://barracudalabs.com/feed/',
'http://www.secureworks.com/rss/threat-analysis.xml',
'http://www.sensepost.com/blog/index.rss',
'https://whitton.io/feed.xml',
'https://sensepost.com/rss.xm',
'https://www.youtube.com/feeds/videos.xml?playlist_id=UU9Qa_gXarSmObPX3ooIQZrg',
'https://www.reddit.com/r/netsec/.rss',
'https://advisories.ncsc.nl/rss/advisories'
'https://news.google.com/rss/search?q=threat+intelligence&hl=en',
'https://news.google.com/rss/search?q=apt+advanced+persistent&hl=en',
'https://news.google.com/rss/search?q=vulnerability+exploit&hl=en',
'https://news.google.com/rss/search?q=poc+proof+of+concept+exploit&hl=en',
'https://news.google.com/rss/search?q=malware+family&hl=en',
'https://news.google.com/rss/search?q=pos+point+sale+malware&hl=en',
'https://news.google.com/rss/search?q=ransomware&hl=en',
'https://news.google.com/rss/search?q=wiper+malware&hl=en',
'https://news.google.com/rss/search?q=malware+analysis&hl=en'
'https://advisories.ncsc.nl/rss/advisories',
'https://feeds.ncsc.nl/nieuws.rss',
'https://research.checkpoint.com/category/threat-research/feed/',
'https://securityintelligence.com/category/x-force/feed/',
'https://www.netskope.com/blog/category/netskope-threat-labs/feed',
'https://blogs.juniper.net/threat-research/feed',
'https://www.fireeye.com/blog/threat-research/_jcr_content.feed?format=xml',
'https://feeds.feedburner.com/fortinet/blog/threat-research',
'https://www.securonix.com/resource-type/threat-research/feed/',
'https://www.recordedfuture.com/category/cyber/feed/',
'https://www.mcafee.com/blogs/tag/advanced-threat-research/feed',
'https://blog.paloaltonetworks.com/category/threat-research/feed/',
'https://www.kaspersky.co.in/blog/tag/threat-intelligence/feed/'
)

$counter = 1
$displayedTitles = @()
while (1) {
    foreach ($url in $urlString) {
        try {
            $xml = New-Object System.Xml.XmlDocument
            $xml.Load($url)
            $items = $xml.SelectNodes("//item")

            # Define an array of date formats that may be used in the pubDate element
            $dateFormats = @("ddd, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-ddTHH:mm:sszzz", "yyyy-MM-ddTHH:mm:ss.fffZ")

            # Sort the items by their pubDate in ascending order
            $items = $items | Sort-Object -Property @{ Expression = { 
                $pubDate = $null
                foreach ($format in $dateFormats) {
                    try {
                        $pubDate = [DateTime]::ParseExact($_.pubDate, $format, [System.Globalization.CultureInfo]::InvariantCulture)
                        break
                    }
                    catch {
                        continue
                    }
                }
                $pubDate
            } }

            foreach ($item in $items) {
                $title = $item.SelectSingleNode("title").InnerText -replace "<[^>]*>", ""
                $link = $item.SelectSingleNode("link").InnerText -replace "<[^>]*>", ""
                $description = $item.SelectSingleNode("description").InnerText -replace "<[^>]*>", ""
                $description = $description -replace "&nbsp;", ""
                $descriptionLines = $description -split "`n" | Select-Object -First 2
                $dateString = $item.SelectSingleNode("pubDate").InnerText
                try {
                    $pubDate = [DateTime]::Parse($dateString)
                }
                catch [System.FormatException] {
                    continue
                }
                catch {
                    continue
                }
                if ($displayedTitles -contains $title) {
                }
                if ($pubDate -gt (Get-Date).AddHours(-8)) {
                    Write-Host ""
                    Write-Host "[$counter] Title: $title" -ForegroundColor Green
                    Write-Host "Publish date: $pubDate" -ForegroundColor Yellow
                    Write-Host "Description: $descriptionLines"
                    Write-Host "`
                    "
                    Write-Host ""
                    Write-Host "Source: $link
                    
                    ``"
                    $displayedTitles += $title
                    $counter++

                    #edit here how quickly
                    Start-Sleep -Seconds 1
                }
            }
        }
        catch [System.Net.WebException] {
            continue
        }
        catch {
            continue
        }
        
    }
}
