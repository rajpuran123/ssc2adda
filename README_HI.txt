SSC2ADDA – Cloudflare Pages Starter (HTML/CSS/JS + Pages Functions + D1)

महत्वपूर्ण:
- यह deployable starter है, कोई पहले से live वेबसाइट नहीं।
- अभी पोस्ट/Ad codes के लिए D1 database binding चाहिए।
- PDF फाइलें इस starter में external HTTPS PDF link के रूप में जोड़ें (जैसे अपनी public PDF link)। R2 direct upload इस version में शामिल नहीं है।
- Google AdSense/Adsterra account approval और valid publisher code जरूरी है। कोई approval या income guarantee नहीं है।
- Ad code केवल अपने approved account से लें। अपने विज्ञापन पर खुद क्लिक न करें; misleading placement/invalid traffic न करें।
- विज्ञापन code HTML/JS चलाता है। केवल भरोसेमंद AdSense/Adsterra snippets डालें।

DEPLOYMENT (कंप्यूटर पर Wrangler CLI के साथ)
1. ZIP extract करें।
2. Cloudflare account में Pages project बनाएँ या GitHub repository connect करें।
3. D1 database बनाएँ:
   npx wrangler d1 create ssc2adda-db
4. wrangler.toml में returned database_id डालें।
5. Database schema apply करें:
   npx wrangler d1 execute ssc2adda-db --remote --file=./schema.sql
6. Pages project की Settings > Functions > Environment Variables में ये secrets जोड़ें:
   ADMIN_PASSWORD = मजबूत, अलग password
   SESSION_SECRET = कम से कम 32 random characters का secret
   इन्हें Secret के रूप में सेट करें, source code में नहीं।
7. Pages project की Settings में D1 binding जोड़ें:
   Variable name: DB
   Database: ssc2adda-db
8. Project को redeploy करें ताकि binding और secrets लागू हों।
9. https://YOUR-SITE.pages.dev/admin.html खोलें, Admin password से login करें।
10. Post form से job/admit/result/answer जोड़ें। Ad Management में approved ad code डालें।

Git deployment:
- ZIP extract कर GitHub repository में सभी files commit/push करें।
- Cloudflare Pages > Create project > Connect to Git चुनें।
- Framework preset: None; Build command खाली; Build output directory: / (या root directory, dashboard के निर्देश के अनुसार)।
- D1 binding और secrets ऊपर के अनुसार जोड़ें।

SECURITY / LIMITS
- Admin session 8 घंटे बाद expire होता है।
- यह starter basic password authentication देता है; strong unique password और secret रखें। Public launch से पहले security review, backups और abuse protections जोड़ना उचित है।
- PDF upload input नहीं है; admin में PDF का HTTPS URL डालें।
- Privacy Policy/Contact pages placeholders हैं; अपनी वास्तविक जानकारी और tracking/ad disclosures के अनुसार अपडेट करें।
- सभी job dates, vacancies और official URLs खुद verify करें। Demo/placeholder listings प्रकाशित न करें।
