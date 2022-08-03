Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B796B18D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659544253;
	h=To:Subject:From:Message-Id:Date;
	bh=Ls4svQ1wlN/zvyq1xmCM9vwZfzsbGmTHuGIama8mZD8=;
	b=JG6xGfWYi6kvmmaqhrxRW/jb5HZr8BkPjeu0/D5qRpnlimMoJVnnA8g/Q7SNdlxD
	genIF+mOereVec1y9ZALXmi89zPM3itrE4QtdXI4EcCCW6Zg99E8Cc5WZnHP/TAxsjB
	GHhXUY03uVKTagcpjriFi+bXkx8wb2jl4zlPqT24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659544253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ls4svQ1wlN/zvyq1xmCM9vwZfzsbGmTHuGIama8mZD8=;
	b=AnJ6Rp5bDY13siw11WC1k/IQfs/PcElKUmADAKs3KBaVnl4uZS+MMi5MCaMrk2Xo
	mR1feVR4I8/zQlrcJZhARW4MAwVTsne8THZl+ODVHNO8sNgFsumnkvHExCEm/u7vDQf
	hiZYOcdDSN/2mWkrboxCudwOk2VLFSESxxIAznDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182648bb16f-8047485f-376e-4207-b4eb-1d64e842b0fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df4d384b248b169c6e854924b453aad22457e18005463aaf733bc9fd64bc3651
Date: Wed, 3 Aug 2022 16:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659544252
