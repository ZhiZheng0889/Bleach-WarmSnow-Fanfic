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

- “秘籍” (manuals) table excerpt in Chinese (updated 2022-12-14 per the pasted header): https://wiki.biligame.com/warmsnow/%E7%A7%98%E7%B1%8D

- “神兵” (divine-weapon traits, list index): https://wiki.biligame.com/warmsnow/%E7%A5%9E%E5%85%B5
- “神兵” (Semantic MediaWiki list query used to enumerate entries): https://wiki.biligame.com/warmsnow/api.php?action=ask&format=json&query=%5B%5B%E5%88%86%E7%B1%BB:%E6%AD%A6%E5%99%A8%5D%5D%7C%3F%E6%AD%A6%E5%99%A8%E5%90%8D%E7%A7%B0%7C%3F%E6%B5%81%E6%B4%BE%7C%3F%E7%A5%9E%E5%85%B5%E7%89%B9%E6%95%88%7Climit%3D1000

Weapon pages pulled (wikitext) to paraphrase example traits:
- https://wiki.biligame.com/warmsnow/%E4%B8%87%E9%92%A7
- https://wiki.biligame.com/warmsnow/%E9%9B%B7%E6%81%AF
- https://wiki.biligame.com/warmsnow/%E7%99%BE%E8%B6%B3
- https://wiki.biligame.com/warmsnow/%E8%A1%80%E8%99%B1
- https://wiki.biligame.com/warmsnow/%E8%B5%A4%E7%8E%BA
- https://wiki.biligame.com/warmsnow/%E7%82%BD%E7%84%B0
- https://wiki.biligame.com/warmsnow/%E9%85%92%E7%A5%9E
- https://wiki.biligame.com/warmsnow/%E5%A0%95%E6%97%A5
- https://wiki.biligame.com/warmsnow/%E9%AA%A4%E9%9B%A8
- https://wiki.biligame.com/warmsnow/%E5%B9%BB%E7%81%AD
- https://wiki.biligame.com/warmsnow/%E6%97%A0%E5%90%8D
- https://wiki.biligame.com/warmsnow/%E9%BB%84%E6%B3%89

## Next pages to pull (recommended order)
If the wiki loads in your browser, these are the next best targets to summarize into this folder:
- Lore
- Glossary
- Imperial Guard
- Bi-an
- Five Great Clans (if there’s a dedicated page)
- Sects pages: Seven-Sword Shura, Infinite Arhat, Thunderfury Vajra, Bitter River Bodhi, Mother Trinity

