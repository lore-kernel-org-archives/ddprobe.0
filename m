Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436B35386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660599052;
	h=To:Subject:From:Message-Id:Date;
	bh=E6kxkeg2QFGv9AxGW8hy1iNmNC2SgzhX979zS+DBqys=;
	b=MFyDutBLLPUEoVoqPTOmONKOIOp0xhL/LKY2LAhu1wmHbP5oh2GGMivGPYyXPVCO
	rFbbp2CA+dw2P2cf6jWfzHfC98IVi1BycgY0otcQ2FnuHn0v2M9f8quwkoBiEqCT1Qj
	ScFCnlwPA1xlBA4YbZPvqpg505/o2tju16qYSDIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660599052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6kxkeg2QFGv9AxGW8hy1iNmNC2SgzhX979zS+DBqys=;
	b=EdXn9lWJfQjXfwomHu9cMlN1A/Hk6bG2jj/tW6v4yKQXn27JuTBn/yqdXverDNw8
	QuRVZ0nRr22baWM8GP1l1XWWJjghYUwbgVlinSQrhqzPrE3Npfoud2yDXO1+xp5nc7E
	eIZQHnKdTv2evfgcKSnyK8wWAOZErj5DvdtfshTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a36aa8ed-2b9cb207-901f-4ca7-af5c-ae88ae8aa026-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09b51b4a188ee2ff667ef78e8209ae0c5eb6b0a10fad8dbbdc030168fb1ab2c3
Date: Mon, 15 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660599052
