USE [SentimentAnalysis]
GO

/****** Object:  Table [dbo].[Sentiment_Analysis]    Script Date: 1/16/2024 2:06:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sentiment_Analysis](
	[Store_Name] [varchar](max) NULL,
	[Store_Lat] [float] NULL,
	[Store_Long] [float] NULL,
	[Store_City] [varchar](max) NULL,
	[Store_Chain_Name] [varchar](max) NULL,
	[Store_Star_Rating] [bigint] NULL,
	[Store_Review] [varchar](max) NULL,
	[sentiment_vader] [float] NULL,
	[sentiment_category_vader] [varchar](max) NULL,
	[roberta_neg] [real] NULL,
	[roberta_neu] [real] NULL,
	[roberta_pos] [real] NULL,
	[Emotion] [varchar](max) NULL,
	[sentiment_type] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


