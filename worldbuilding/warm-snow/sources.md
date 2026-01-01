# Sources & notes

## Core references
- Warm Snow wiki main page: https://warm-snow.fandom.com/wiki/Main_Page
- All pages index (term harvesting): https://warm-snow.fandom.com/wiki/Special:AllPages
- Excaliburs overview: https://warm-snow.fandom.com/wiki/Excaliburs
- Relics overview: https://warm-snow.fandom.com/wiki/Relics

## API pulls (used to paraphrase without ads/redirects)
- Excaliburs: https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Excaliburs&prop=wikitext
- Skills (sect list + skills): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Skills&prop=wikitext
- Relics (text + headings): https://warm-snow.fandom.com/api.php?action=parse&format=json&page=Relics&prop=wikitext
- Sect pages (starting skills/stats): Seven-Sword Shura, Infinite Arhat, Carousing Acalantha, Thunderfury Vajra, Bitter River Bodhi, Mother Trinity, Shadow-Walker, Soul Blade Shura (all via `action=parse&prop=wikitext`)

## Divine weapons (shenbing) sources
- Biligame divine weapons index: https://wiki.biligame.com/warmsnow/%E7%A5%9E%E5%85%B5
- Semantic query listing divine weapons: https://wiki.biligame.com/warmsnow/api.php?action=ask&format=json&query=%5B%5B%E5%88%86%E7%B1%BB:%E6%AD%A6%E5%99%A8%5D%5D%7C%3F%E6%AD%A6%E5%99%A8%E5%90%8D%E7%A7%B0%7C%3F%E6%B5%81%E6%B4%BE%7C%3F%E7%A5%9E%E5%85%B5%E7%89%B9%E6%95%88%7Climit%3D1000
- Sample weapon pages pulled for paraphrase: https://wiki.biligame.com/warmsnow/%E4%B8%87%E9%92%A7, https://wiki.biligame.com/warmsnow/%E9%9B%B7%E6%81%AF, https://wiki.biligame.com/warmsnow/%E7%99%BE%E8%B6%B3, https://wiki.biligame.com/warmsnow/%E8%A1%80%E8%99%B1, https://wiki.biligame.com/warmsnow/%E8%B5%A4%E7%8E%BA, https://wiki.biligame.com/warmsnow/%E7%82%BD%E7%84%B0, https://wiki.biligame.com/warmsnow/%E9%85%92%E7%A5%9E, https://wiki.biligame.com/warmsnow/%E5%A0%95%E6%97%A5, https://wiki.biligame.com/warmsnow/%E9%AA%A4%E9%9B%A8, https://wiki.biligame.com/warmsnow/%E5%B9%BB%E7%81%AD, https://wiki.biligame.com/warmsnow/%E6%97%A0%E5%90%8D, https://wiki.biligame.com/warmsnow/%E9%BB%84%E6%B3%89

## Manuals / miji
- Biligame manuals table (Chinese): https://wiki.biligame.com/warmsnow/%E7%A7%98%E7%B1%8D

## Extraction notes
- Pages sometimes redirect to ad/login flows; the API endpoints above were used to avoid that.
- All content here is paraphrased, not quoted. Some names may remain in Chinese; expand with transliteration if needed.
- Where data was missing, placeholders were used and later filled via user-provided excerpts (Dec 2025).
