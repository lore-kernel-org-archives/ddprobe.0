Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F784C76
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657818412;
	h=To:Subject:From:Message-Id:Date;
	bh=7OYldW0DGKEjRcVjap9ouSMPpLHk1tlhs4HyTvgheZM=;
	b=QMCDf6d1cE03A9D8mtyKNuN7E1+flIbVhnxyrQqqFOFuHtgQbddO8VprFqrH2z3d
	be8KaaGohav4JBUW5vt8WT48TYQq0ZjK1JCYZoKGk7+/6Y4YbeMx+swUaDwz5P1sjCW
	cHCaFlTEXF9g+ocdSw37Y216rrM2VWF5XqXFvLSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657818412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7OYldW0DGKEjRcVjap9ouSMPpLHk1tlhs4HyTvgheZM=;
	b=is/nKtKPR/jC1OdnzjPMF8Yrm+WqgxH2eZyob3JYZgAD9GMc3yQ+/meXqlvIVKI3
	dMwrWu04km333Fi0rj0WcAPNypvXsR8dAsSmfkT/2w0U/57Y7iuoFivadOHsBrOE2s3
	LG9twgmbmmWe5g6qpzhsV/mW1Syh6YXzLv+a0l4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdad7563-8e913a36-9a5a-44f6-8aa7-0f78c2e06a0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 889ed2bc8d771ec3ce906b7119517e8bf8bc317b9e4d887eaa209de0b92cf443
Date: Thu, 14 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657818412
