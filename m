Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F359A1843
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657996612;
	h=To:Subject:From:Message-Id:Date;
	bh=y6fvGyVL9GlZxC15/N3EGhUdbboPYhendG75TLAVoyk=;
	b=IxWsVSuZohypd8vCzc8zWYgwR21POyNsHRVkVII+hYGXWs8FXwm70WtIyTtqLo5y
	xwNMqFc/k7y4RPjrSZqmJ2ghNuCRmN1Q1qzx8sb/a/1xynp9ukMN2LhJOTI0NSzr1G0
	WapqPr/M1u0BgO7Buj0FyH5W1i9NlyrlKNDbOxKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657996612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y6fvGyVL9GlZxC15/N3EGhUdbboPYhendG75TLAVoyk=;
	b=UzysacPdW10jy5kvd4Xoq8VVE0QBmmETCKFFOYOKrEkdnQ+Lo8uXSgto+4QGlPt7
	CeafQsBA6Kd8CaEf5a+WiuGP53ORM1Qs4cq9lu1bOyboT6JClls7p8AdSqjYkDBq156
	1jMP1jSbSQF+V8y1N1o9F4cuFzIFtTY0Uinu+exo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182084c92e5-c08accb7-695c-4054-9999-7c0460d2df92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5ea8a0e251a893b8e3e0de8a0a08d28fa1dcd5a1ea8a4ffad76f2f285af84b6
Date: Sat, 16 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657996612
