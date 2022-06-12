Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B52EC0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 12:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655038499;
	h=To:Subject:From:Message-Id:Date;
	bh=DdoC5aH6ExzjpcUAgr7aRAT/LYNoWpS2nCXW7yiIECg=;
	b=e0Q/KBtNYXYPgxJFrgOJPRtfBrbq2Rk2BBQPHrn9MKebnQ84C9UAvDJ+aDJ+VCNK
	hf1WJeiEtT/UyRfEQWTOPJJiUmao2j0oe6OPMUqGSy5fZ08z0IJVxyd5aAi92vgJkT4
	6BTRkIIgCbKEUWf8tOgOYY9UiAQr5pMDXJveIVMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655038499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DdoC5aH6ExzjpcUAgr7aRAT/LYNoWpS2nCXW7yiIECg=;
	b=Hpxrp6ugAKegXAgAG1Pa4EpTbVxfhLLzUGDP3DrggiVeA+gwBmrHajNIHQsXk5yh
	I6pX3HgkagaxI00tqOAdt1BJYSqFNovvzet3OYKM/mPGWdb5iGOzvQiQSCLmK4qqtrx
	naVO+ZLSwltLUlMGDX/pXvIdBK/SyxZq9zzZGKlw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157fb5989-87a39b66-6402-4d60-b0ac-8e757ba624d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 347a883d341eecae994835b31f82febacafe216ea452c46e52c43f80c03e637d
Date: Sun, 12 Jun 2022 12:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655038499
