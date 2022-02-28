Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713905398
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646043984;
	h=To:Subject:From:Message-Id:Date;
	bh=6tBOMl1A97wIWpYwbUSTNnA+zhDCebbcbLlG6k4e7pM=;
	b=hJw4ATxZCv4GxUgXqseqIl40dUTPVS3bNPrdioeeMFG3ADCVUWGYv28pSIkL5u3k
	1V+T3XFkL+gd+74ZJq/KFQjwhGL/yBQcDhBGq+TEP9I0haMGqII03gcvjBt19tpfBqS
	rJBTxvS647cMT4nPl0yzmVVxSUoWO/zuvS2TtiHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646043984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6tBOMl1A97wIWpYwbUSTNnA+zhDCebbcbLlG6k4e7pM=;
	b=D3E4fPB1eFXBBVn3/dNZh9G3oguYVnBZda5OWg2zluxOvqZJ/WqeGGlV20RFRPyc
	gq5e8ArbihRuJ2pveQuVXJ24sN4+rl5CcJERLWcenOqpva7yfNZRvs119lsuQqr3DZ4
	+5BUn2TA4pzfMX6xAoiphP1HpdkUVWo/Km//9Plo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fddf385-713bb10d-c846-40c5-9de1-4ba63148a1f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f17ba8a89c7226effaf521f9d452561567137f8a951aaaa1d5a4e225990c1f1e
Date: Mon, 28 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646043984
