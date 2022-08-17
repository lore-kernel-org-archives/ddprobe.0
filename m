Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3886D19
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660765253;
	h=To:Subject:From:Message-Id:Date;
	bh=6XdRmVT/g40ZkA+lthnUxHoSb4USA3mtSEqkGR27g5E=;
	b=j+GH9hSLj2skgWlzWe5bC+f/k/aHdXj5H7JUmpux6LprhqhsmQy1VZuwUqwJxZb2
	AxsJeBYWbS41QD5prHwrHM8SgZ7pfL7FYCZoDda7uP+m9D6vU/J6tYKAtM1i+ByRBNA
	mdwsdZyZdprlHMnL3f7jr3+Q5C1D1cvXRa2VkdSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660765253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6XdRmVT/g40ZkA+lthnUxHoSb4USA3mtSEqkGR27g5E=;
	b=DE59BN+fXNyAILunPBCMC73T2g/2pDeKbyVqCY9+YyLXava4T+sou2Gx+OWUeLpa
	OCEWd7TqswAOMuzX/r1DzBCHsJh+kE4RDloTldzfWBEdtpmJ4a0V739d/ZclVesYHH5
	jvJ36fBcTDQufuZ931vSFzviIAvGyA8tLuG0VckE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad52abe6-7b9500ae-993c-434b-aa83-b94c74067dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 805ca5255689b3ddeb7dfed71e9c577f2070591e8014921509d183b37d45aebd
Date: Wed, 17 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660765252
