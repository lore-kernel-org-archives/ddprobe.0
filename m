Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621477F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661149852;
	h=To:Subject:From:Message-Id:Date;
	bh=3rWjoc/0M6U8eJPOfl33el/QKBXFRA//alNQniwWeUw=;
	b=akc1IBFvEt2MvazDv3ZSlzlJLkFRdsmfNBWcSNkHl5AaW608ZXZXLU+4ky9+E17z
	pk8bw3g+tTks7th+YR+CG54o+6xJb4pL+PSVLV4qCynmGOSCJPf3TCj6NFysMuwPkyP
	lPO0lyocq6HtqLhHu6HOkRiXB4VM6PnDeXhwb818=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661149852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3rWjoc/0M6U8eJPOfl33el/QKBXFRA//alNQniwWeUw=;
	b=gdkmY6m+JGjyjL2qeWUH/QYyTNIQDwdvu2KGcHH3gNS7ZJSNElSwxZrB1gx+AYp5
	7+DMYedSSKFYi9dLumstg1PTl6eXhsBQL5cwEfPhYIIzINLpC4CcsgjLYpxr7ZBGvYb
	CXtZYDR73e8YVwe69f/UB/Zi0ZT7FfFTZxE82dSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c43f33e7-1188d177-fe3c-4d3f-ac9a-71dbb6ab8363-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2271bbaaaa2468804d974f73d90d5a62b0ad5f93d039496e72139056fb8cfa1
Date: Mon, 22 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661149852
