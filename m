Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80821850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656674812;
	h=To:Subject:From:Message-Id:Date;
	bh=WUAVhsKuDm3jtRCs8YJy0dA38j6Rt0uAxbHyHjLr6DQ=;
	b=Jkp9aDcw6ZKlc1DFJW7RfVx+HQSBuS2G8RkISDb6LLWEmZDUIRD5nW6hVa+n61Dp
	JYsu6yJSCsOaONBrACR7uc8YyRnmeuDnMN8jCgmq7IzehW7iEVctebtQoUhnzhiyirh
	UM3t9r7/r4QQneWkPmjnYjiHbts+Zpem7lWi9Z/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656674812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WUAVhsKuDm3jtRCs8YJy0dA38j6Rt0uAxbHyHjLr6DQ=;
	b=J1t4iOAZBHwMGaOzqaHuwNogooDG/DFYvFgoRyVXbJ0T5HDqr/YFiSp7kYz6H2Hz
	ZiqDDxidF2DHrf3OpiiuNGGUSxnYKpusSDp/eE2TsWZZk5WYcHzSgXfsvPCl36m7+Pn
	v1iQLLJ2yjP4DOsa/Yfa3bDRngv1KJDJda2MsnOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9838176-9810aacf-1262-4cb2-aad0-76420e903cda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3e2e6c5fda92146551fa39a48f18551a884d168f3456e3f6d5a0025188da32a
Date: Fri, 1 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656674812
