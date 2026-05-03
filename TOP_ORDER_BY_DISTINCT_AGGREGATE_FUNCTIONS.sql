CREATE TABLE Marketing_Finance (CampaignID INT, Platform VARCHAR(50), CampaignName VARCHAR(100), Impressions INT, Clicks INT, Budget DECIMAL(12,2), Spend DECIMAL(12,2), Revenue DECIMAL(12,2)); 

INSERT INTO Marketing_Finance  
(CampaignID, Platform, CampaignName, Impressions, Clicks, Budget, Spend, Revenue) VALUES 
(1, 'Facebook', 'FB_Summer_Sale', 100000, 5000, 5000.00, 4800.00, 12000.00), 
(2, 'Instagram', 'Insta_New_Launch', 80000, 4000, 3000.00, 2900.00, 7500.00), 
(3, 'Website', 'Web_Referral_Bonus', 50000, 2500, 4000.00, 3800.00, 9500.00), 
(4, 'YouTube', 'YT_Product_Ads', 120000, 6000, 6000.00, 5900.00, 15000.00), 
(5, 'Facebook', 'FB_Diwali_Offer', 150000, 7500, 7000.00, 6800.00, 20000.00), 
(6, 'Instagram', 'Insta_Holiday_Sale', 90000, 4500, 3500.00, 3400.00, 9000.00), 
(7, 'Website', 'Web_BackToSchool', 60000, 3000, 4500.00, 4300.00, 10000.00), 
(8, 'YouTube', 'YT_Ad_Special', 110000, 5500, 6500.00, 6400.00, 16000.00), 
(9, 'Facebook', 'FB_Winter_Offer', 130000, 7000, 7500.00, 7300.00, 21000.00), 
(10, 'Instagram', 'Insta_Spring_Launch', 95000, 4700, 4000.00, 3900.00, 10500.00); 

--1. Show the Revenue column with an alias TotalRevenue to make it more readable.
SELECT REVENUE AS TOTALREVENUE FROM Marketing_Finance;
--2. Display the Budget column as AllocatedBudget for clarity.
SELECT BUDGET AS ALLOCATEDBUDGET FROM Marketing_Finance;
--3. Show the Clicks column with alias TotalClicks to indicate total user clicks.
SELECT CLICKS AS TOTALCLICKS FROM Marketing_Finance;
--4. Display Impressions as TotalImpressions for easier understanding.
SELECT IMPRESSIONS AS TOTALIMPRESSIONS FROM Marketing_Finance;
--5. Calculate the sum of Revenue and show it as TotalRevenue.
SELECT SUM(REVENUE) AS TOTALREVENUE FROM Marketing_Finance;
--6. Calculate the sum of Budget and display it as TotalBudget.
SELECT SUM(BUDGET) AS TOTALBUDGET FROM Marketing_Finance;
--7. Calculate the sum of Spend and show it as TotalSpend.
SELECT SUM(SPEND) AS TOTALSPEND FROM Marketing_Finance;
--8. Calculate Profit as Revenue - Spend and give it the alias Profit.
SELECT REVENUE-SPEND AS PROFIT FROM Marketing_Finance;
--9. Calculate the average Revenue and show it as AverageRevenue.
SELECT AVG(REVENUE) AS AVERAGEREVENUE FROM Marketing_Finance;
--10. Find the maximum Revenue and show it as HighestRevenue.
SELECT MAX(REVENUE) AS HIGHESTREVENUE FROM Marketing_Finance;
--11. Sort campaigns by Revenue in ascending order.
SELECT * FROM Marketing_Finance ORDER BY REVENUE ASC;
--12. Sort campaigns by Revenue in descending order.
SELECT * FROM Marketing_Finance ORDER BY REVENUE DESC;
--13. Sort campaigns by Budget in ascending order.
SELECT * FROM Marketing_Finance ORDER BY BUDGET ASC;
--14. Sort campaigns by Budget in descending order.
SELECT * FROM Marketing_Finance ORDER BY BUDGET DESC;
--15. Sort campaigns by Impressions in ascending order.
SELECT * FROM Marketing_Finance ORDER BY IMPRESSIONS ASC;
--16. Sort campaigns by Clicks in descending order.
SELECT * FROM Marketing_Finance ORDER BY CLICKS DESC;
--17. Sort campaigns first by Platform ascending, then by Revenue descending.
SELECT * FROM Marketing_Finance ORDER BY PLATFORM ASC, REVENUE DESC;
--18. Sort campaigns by Profit (Revenue - Spend) in descending order.
SELECT *,REVENUE-SPEND AS PROFIT FROM Marketing_Finance ORDER BY PROFIT DESC;
--19. Sort campaigns by CTR (Clicks / Impressions) in ascending order.
SELECT (Clicks * 1.0 / Impressions) AS CTR FROM Marketing_Finance ORDER BY CTR ASC;
--20. Sort campaigns by Budget descending and Revenue ascending.
SELECT * FROM Marketing_Finance ORDER BY BUDGET DESC, REVENUE ASC;
--21. Show all unique platforms from the table.
SELECT DISTINCT PLATFORM FROM Marketing_Finance;
--22. Show all unique campaign names.
SELECT DISTINCT CAMPAIGNNAME FROM Marketing_Finance;
--23. Find all unique budgets used in campaigns.
SELECT DISTINCT BUDGET FROM Marketing_Finance;
--24. Show all unique combinations of Platform and CampaignName.
SELECT DISTINCT PLATFORM, CAMPAIGNNAME FROM Marketing_Finance;
--25. Find all unique revenue values from the campaigns.
SELECT DISTINCT REVENUE FROM Marketing_Finance;
--26. Retrieve the top 3 campaigns with highest Revenue.
SELECT TOP 3 CAMPAIGNNAME FROM Marketing_Finance ORDER BY REVENUE DESC;
--27. Retrieve the top 5 campaigns with lowest Budget.
SELECT TOP 5 CAMPAIGNNAME FROM Marketing_Finance ORDER BY BUDGET ASC;
--28. Retrieve the top 2 campaigns with highest Clicks.
SELECT TOP 2 CAMPAIGNNAME FROM Marketing_Finance ORDER BY CLICKS DESC;
--29. Retrieve the top 4 campaigns with highest Impressions.
SELECT TOP 4 CAMPAIGNNAME FROM Marketing_Finance ORDER BY IMPRESSIONS DESC;
--30. Retrieve the top campaign with highest Profit (Revenue - Spend).
SELECT TOP 1 CAMPAIGNNAME FROM Marketing_Finance ORDER BY REVENUE-SPEND DESC;
--31. Retrieve the top 3 campaigns by Budget.
SELECT TOP 3 CAMPAIGNNAME FROM Marketing_Finance ORDER BY BUDGET DESC;
--32. Retrieve the top 2 campaigns with highest ROI ((Revenue-Spend)/Spend*100).
SELECT TOP 2 CAMPAIGNNAME FROM Marketing_Finance ORDER BY ((Revenue-Spend)/Spend*100) DESC;
--33. Retrieve the top 5 campaigns with lowest Clicks.
SELECT TOP 5 CAMPAIGNNAME FROM Marketing_Finance ORDER BY CLICKS ASC;
--34. Retrieve the top 3 campaigns with highest CTR (Clicks / Impressions).
SELECT TOP 3 CAMPAIGNNAME FROM Marketing_Finance ORDER BY CLICKS/IMPRESSIONS DESC;
--35. Retrieve the top 3 campaigns with highest Revenue including ties.
SELECT TOP 3 WITH TIES CAMPAIGNNAME FROM Marketing_Finance ORDER BY Revenue DESC;
