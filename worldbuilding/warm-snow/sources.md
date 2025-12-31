# Sources & verification notes

## Sources used (so far)
- Wiki home page / main page: https://warm-snow.fandom.com/wiki/Main_Page
- “All pages” index (for term harvesting): https://warm-snow.fandom.com/wiki/Special:AllPages
- Excaliburs (weapons overview): https://warm-snow.fandom.com/wiki/Excaliburs
- Relics (overview + base/DLC lists): https://warm-snow.fandom.com/wiki/Relics

## Additional sources used for systems/sects (API)
These were pulled via Fandom’s MediaWiki API to avoid ad/login redirects:
- Excaliburs (weapons): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Excaliburs&prop=wikitext
- Skills (system + sect list): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Skills&prop=wikitext
- Skills (rendered tables for skill lists): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Skills&prop=text
- Skills (section anchors like Normal_Skills_9): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Skills&prop=sections
- Relics (system + examples list): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Relics&prop=wikitext
- Relics (rendered headings/lists): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Relics&prop=text
- Sect pages (statue descriptions + starting skills):
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Seven-Sword_Shura&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Infinite_Arhat&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Carousing_Acalantha&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Thunderfury_Vajra&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Bitter_River_Bodhi&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Mother_Trinity&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Shadow-Walker&prop=wikitext
	- https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Soul_Blade_Shura&prop=wikitext

## Notes on extraction
Some wiki pages intermittently redirect to third-party login/ads endpoints or are blocked by CSP when fetched programmatically from this environment.

To keep momentum without copying content, this repo uses:
- **Paraphrased** summaries (no large quotes)
- “TBD” placeholders where details weren’t reliably retrievable

Additional note: some details were provided via user-copied wiki text in chat (Dec 2025) when programmatic fetching was unreliable.

## Next pages to pull (recommended order)
If the wiki loads in your browser, these are the next best targets to summarize into this folder:
- Lore
- Glossary
- Imperial Guard
- Bi-an
- Five Great Clans (if there’s a dedicated page)
- Sects pages: Seven-Sword Shura, Infinite Arhat, Thunderfury Vajra, Bitter River Bodhi, Mother Trinity

