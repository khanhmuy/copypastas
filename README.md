## hmuy's copypastas (en)
### forked from [beerpiss's](https://github.com/beerpiss/copypastas)

To add a copypasta copy as follows:
------------------------------------------------
            <h2>COPYPASTA TITLE</h2>
                <div class="center">
                    <p id="pID">
                        YOUR COPYPASTA
                    <center>
                        <button class="button copy-btn">Copy</button>
                    </center>
                </div>
------------------------------------------------
Use the `<br>` tag at the end of each paragraph.
Keep in mind these tags will be removed when the user presses copy.               
------------------------------------------------
pID should follow the standard of tX-pY, where:
- X is the section index (counted from 1)
- Y is the copypasta index (counted from 1)

To add a section do:
------------------------------------------------
- Add an entry in html > body > div.copya > div#tabs > ul#panels:

            <li><a href="#tabs-n">SECTION_TITLE</a></li>

Replace #tabs-n with the next available number, like #tabs-7.
------------------------------------------------
- Then, add an entry in html > body > div.copya > div#tabs:

        <div id="tabs-n">
            <div id="accordion-n">
                
            </div>
        </div>

Replace tabs-n and accordion-n with the index you set above.