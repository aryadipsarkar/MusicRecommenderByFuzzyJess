# Music Recommender (implementing Fuzzy Logic)
Modern day business has become very intelligent with companies using AI to attract customers and sell their products. One such business is selling products on online stores.
This project is based on one such online store – a music store which has a unique feature of recommending music to its online users and increasing its business.
The recommendation is based on simple factor – the user’s music taste or genre of music that he likes. Based on these, the user sees a recommended list of songs along with the singers on his/her screen. There is a high chance that the user will get attracted to the music since they are not randomly recommended but are based on user’s taste in music.
I have based the recommendation system and hence created the rule engine in JESS on only two factors to keep it simple: genre of music that the user likes and the age group of the user
The rule engine is written in Fuzzy JESS and is contained in the **“FuzzyMusicRecommendationSystem.clp”**.<br/>
<br/>
Running the program:<br/>
1. Import the **FuzzyMusicRecommendationSystem.clp** as an eclipse project.<br/>
2. Run the project<br/>
3. Select the Genre of music that you like (User can select from 3 different genres- Pop, Metal, Rap)<br/>
4. You have to answer only in low/high<br/>
5. You will see the user’s recommendations based on user's taste in music and according to his/her age. The recommended music may be more than one, based on the different factors.<br/>
