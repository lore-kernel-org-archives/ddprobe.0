Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E52F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658705212;
	h=To:Subject:From:Message-Id:Date;
	bh=FsPSdNX88V3ucgHzEodmctdGEnDHFzKDO7rodyTg/5o=;
	b=DefoyQX11QpugwMWut/hkOI/ykFDp7Bs4XYg3rmCdb1W5U7oBeu4N1uR53MTuO9g
	Pb0/4lWVqjc27fRqAosFqpgV2pjYqLSwdDFhSxhMFAXfeGVyJmUowLLarV9KP2B29A9
	a5FYihoLiIpXx8neaPRIpu23A7ujOn2hSajV5ZyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658705212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FsPSdNX88V3ucgHzEodmctdGEnDHFzKDO7rodyTg/5o=;
	b=iFT1l9ANeG4wczxm4iUMoRG8f9n6ItY41snJG21dSx64pgFdYTbb1jxXauLZKqTd
	DFt5GmAdHH1S8oHsuZzCGSp55zlOYygsQU+mJzuw82Al9ACGKlnIXXpMecFxvgDqKoT
	WcIAUaPND04aImETcOIcR08LmL1MUVhBC3YutWA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823288f398-594806e5-8363-4e9d-b01e-3e03c905f70e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0875da8e9f279e16d174487e35b2b5300eedcbc3e4c1817ea4f975257d0a7204
Date: Sun, 24 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658705212
