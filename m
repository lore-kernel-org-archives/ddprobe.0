Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7C57C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659843652;
	h=To:Subject:From:Message-Id:Date;
	bh=4a2TXxmpsuzSW0zgMQwTNcsf8OSNRle4CUrIfztXuT0=;
	b=NE/k2ewU3GCKxWmepwNx1h0Ca1QmkdIAvWJT+SAagDtGOigVihjVx21R9FaYeri/
	ZZ1BbB+ON4+HD5n39Kw3yF2fRONJAeFZmFXKFvdDARNst5Db+tfCjTxHtbSOi4TE6ds
	BsxMVrV88jKjXljQCai7WzrVchTzeT7DvUwWyQvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659843652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4a2TXxmpsuzSW0zgMQwTNcsf8OSNRle4CUrIfztXuT0=;
	b=eBDsGPn5ALLXSU+pBivshopmr1zO49eMPrpvkuwM7hYp8uIJflZ3kqCg90eAcWAz
	Vv5ewWDBOfL/wHopSgKQriw8FRhGNFr+SB1iqatLZg/3y/+Tv57Mt1x3b3pr2/JnIrR
	iuGICqfYb4uGjYdxwAUQdEpR17PEbqcCB0FHj4gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018276642c15-b7ac537b-9120-462e-ae6b-87c059aeeb9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f238729181e840c45ee9b14bc6cf7e3036bd1214fef28d3e99b6d06efe8f97ed
Date: Sun, 7 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659843652
