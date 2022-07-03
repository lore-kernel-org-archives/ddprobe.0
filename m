Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A8C3C2E
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656872212;
	h=To:Subject:From:Message-Id:Date;
	bh=3BLWP4EkOon0xfGGKHqfCfFbgS6QZdYyi7OP/Da/SMM=;
	b=XLTePjOoBfmH1JMSuAx/qEOxdSTDHytUEC+zHbUTGfCrSMGy6NWtPh7XZxRg4+Ey
	KveIN7XxGlhc07DBGFdYcm+7kNX+PM/bhEG7EoCf/jrmRAl+EllaoHhBINW8d+aynrC
	mXLiM7MTeHrEO7w3c1V7/lnRbqsZ3SjsH/yuKH+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656872212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3BLWP4EkOon0xfGGKHqfCfFbgS6QZdYyi7OP/Da/SMM=;
	b=Pzg7TH7tGxChAOWkH06MMFUXtpXy8/Q4Sv0a7UdzFcie/atDKyC7kG5pJ2/jW7XI
	NUlyQ80EnCyHyEXee12uhDQWrq4Ak1/7bJ2F4oUD2jMJ0D487aSR/Hle13B+FUAhxOU
	LygZFq9BMQ2SpFpF8Jxun3NEN4rp7KxMSWNN9mj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5479781-ed534462-7164-43c0-80fd-179551d8aff6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b16a530d8d33f04c873be87138cf20f43c94fe495967a4af7497597b518a725e
Date: Sun, 3 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656872212
