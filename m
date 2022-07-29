Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6404C77
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659115852;
	h=To:Subject:From:Message-Id:Date;
	bh=pT9FxKJkXH91jROerIG+fEx/oOg4SOtsyalukY5NWjw=;
	b=AWTiaVktWNLMeGJ3QnYntpBID7D/cL4ejSTf0E89ZJoH2ev6fWkyW51DlBOxMGbw
	0JuGfRqSvkr4EBeJHcbTSv3bkLZanpFwhwDCIsFkjbfwwfc2HWmEt/OzK/FO4ydPrv7
	6qONK3ovgSKZL/4OAPLPUEgCAukyTq0nQh/0AN6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659115852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pT9FxKJkXH91jROerIG+fEx/oOg4SOtsyalukY5NWjw=;
	b=ObK5xNNBqxsYn4qVKSv67GAsTqA60QBq99SSTP64yVHtqe6jyahUTKBJnWBDrZqO
	5tkmu7D9FAtThsFM5xSDWbsk5nTxAYufkcbojKyKvned83wHG/Czddc84S70pnfbmt1
	HirvlOVgRVB6dVNzm1a2RpQ3r8f5DPbGZ4BzOd/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b02d357-06675fd0-9278-45c6-9f33-1d13fb45172c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c132b99b1df84053570b7c547b4425dc369c9f0bce3c37467b3c9346fc1119ba
Date: Fri, 29 Jul 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659115852
