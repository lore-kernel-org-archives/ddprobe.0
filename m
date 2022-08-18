Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5212F23C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660805452;
	h=To:Subject:From:Message-Id:Date;
	bh=9PlL/MjadXpJvPkt+g8wWn4jIvGS0zbQeGXPKgrmC1I=;
	b=ISrWqTNiizD13uW06P4+mL6X5OvRGmZ2CiNsxNYoeP0zRHeT83pNk3m0X+8lo4Bw
	yLzYCPvDpAsN7UrvyeMMuKexq290R1vpxd0SX8M4RW3kzUS4kxrd0H3Z+7RpFsCgur3
	4vgazbCihtpg1wic3lwWGaKS9rAY3ex0MJRGvx0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660805452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9PlL/MjadXpJvPkt+g8wWn4jIvGS0zbQeGXPKgrmC1I=;
	b=Wbk+A5o25uUkwgJ8YXXIF5kpA8RlfJbLYWCtLdLO/nz935HDfHwuptu7syUA+Mwx
	+EdkRUvECX+OOuWFvddH0UZY5FTndmMAuvD9iuKgs5/mLWyfy6HHWHD8I9IHoFug/97
	yTrgt0Xgz/Cd7Alc26/yZceHph18DnGTVwplTwG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182afb81346-8f5b1d16-e282-4ba0-8f4e-ef2a46563bd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07a762b562f340f9de1998b306491d211443be6bf17fa88c89cd4e04ba6747b6
Date: Thu, 18 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660805452
