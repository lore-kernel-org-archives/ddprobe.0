Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681BE28EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659959452;
	h=To:Subject:From:Message-Id:Date;
	bh=qK34g4uGKvX7JK1BcSeW32LWthWloTmEdtnHlZpbdsI=;
	b=A757WTA7LFs0yh5CKBQv6SEY4aVSNIRyCx0M0YEoRQOLEPpAcGh4MERBh+f6Ay64
	yy4yBsf1MmrRf4YlmOUPfFPLHdQS+aKS4qImNHYphC/b7MRTXeAIkP1//ETuiZdZHSE
	p9l6Q+0GdxWeQhy8IkUFd8aXmWGKe2L1oeGkMeZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659959452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qK34g4uGKvX7JK1BcSeW32LWthWloTmEdtnHlZpbdsI=;
	b=kIsLw69QF/NO6b33ll3H96ePkLsiNMzjTmExLy/85THUp82qAWkUERIP/sKp7/0W
	PGQE+c2byiDZmhnkg218Jjy+yc1G+68ctUcVhqdy5X7VytEKtHzUReyuW5nMB94jb2d
	JQc3DMfxQ9KcqqQ8HSnKTxJSmezM7iUSTXiPrEm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d4b2364-ad720bbe-45d8-405a-b9cc-07459aef8fda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e771d39fb98601b2962c49501328c72e9ae6ab1b15ac13cac758deff77536329
Date: Mon, 8 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659959452
