Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7EE664D
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657850812;
	h=To:Subject:From:Message-Id:Date;
	bh=sHxzfzah8vB/m5jZSZO1UhRnvv1DT5GuDEw1Z4IQSJk=;
	b=ITpPlqptKKufDaK3OlGSGDB4pDbzOLuXaynYWmfOsiPs/xsOfUOmjAMn/ousVjz6
	RQCZPp60TI+j0x1HrrmyqLOfT0YZvGc0rmw7KUB+5+hrnv3tqVgcuamLSMv1FtFUcbC
	oFnpDvl4hqEuRb9WWe69i2D/y8X+5aAIYDlQ5oTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657850812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHxzfzah8vB/m5jZSZO1UhRnvv1DT5GuDEw1Z4IQSJk=;
	b=a9oku3US+KygHWuNqIb6nZh8c9C4g4c14H2IbQQm79w8yZndbAZGQPR6yWW2nG/0
	HrZ/LTOHise9R0kSevHAgt7G1U8MSrmGuo+SsKMgilNEIa5va2Ikt/VrmCXsKrsPjW7
	N1wTdu3mHU2Z8Mfnwdo2f/umTrEJr2uUcgMLf/+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff9bd773-94b38fac-18d7-4cfd-9b2d-bb551b0ce366-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 653b509fa225c5e53894aaed878da9f1dd46847a58d1893c38aefcda0291a804
Date: Fri, 15 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657850812
