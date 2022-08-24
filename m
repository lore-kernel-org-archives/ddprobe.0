Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660547E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661357452;
	h=To:Subject:From:Message-Id:Date;
	bh=SLy+fvdBTefDd14oy8Z7UZTk+iiGFLcvmbge2HlwXwE=;
	b=fc/C8R1CEMY46rMlInmCA0vkNHiQi77z6QLYHvJcIg5giF9IlMOF+VdHytxBt+zV
	LoC6fwUEDoBVefd2OpNtqRNQQ38LnI6eqSd9Hzj/TRH097t1W/pLNQcQNQDhCJFBWp3
	3B6I4ZYWRRJ68MFzqL2aRxlD7VfyG4WSe6E9VNJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661357452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SLy+fvdBTefDd14oy8Z7UZTk+iiGFLcvmbge2HlwXwE=;
	b=e93e0xd60CAa6DPeVC3hqUp1vs1wP64V1+3wjxjnClq/A1Acp3hl6AuWafmB2CIY
	Jp+n3RFnh4MsSz8PVVQ3aurix6G0Hf7o1nSK1IajbcfOZAqXcZpppFsnutJJaExZGSD
	ZtVEJBy+5p8/Zn/HRpyp378r98o2+AN2DL2WqPnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d09eed68-b1a43dc3-220b-407e-8faa-31194e56e247-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e3fcceb0e3c208c300aff79a6d92e6a1229fadef2bfe28cca17a6c40421b66e
Date: Wed, 24 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661357452
