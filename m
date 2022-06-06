Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEEB7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654522319;
	h=To:Subject:From:Message-Id:Date;
	bh=jAEojsPbFZKBus9BXuYrcKCWUYHtoNPo9GPR9WV7Itg=;
	b=JUdteEhpeUeOdaW5+G12jmxLATS3wXLTiA3l9YL3Vk8L/2GTC5ZP3kjh8MSTCX61
	jV7LlRqiRubeJng2VNAvzeOSGau2eBgnMbQBTftcQYlbX/QZKVCmpKcw5FehaiGlQrY
	v1aJqk2DXZRTCgSphhHTTdNUDDG+c7YKM/w/ohzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654522319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jAEojsPbFZKBus9BXuYrcKCWUYHtoNPo9GPR9WV7Itg=;
	b=dDDSqJ33pb+vkRl0hH9aP3b4+HZL5gEXS9Q+GonOwfT75A8ORxQgJbkBu1biA3TN
	9aGy2rDrrqyzQmintXalSsfy6B5mtO7sxBmLs5K6Hi8UkwwICQuf72DCTOdfJ/t18r5
	20o71xZ7BipmcRvMKdAOk5UycgberYXPoaC2zazc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181393711c1-d760af04-c9d8-4ea3-9e48-74c9df88e75c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e21db5a9f7c7ac13a54a627ea842094933fa36dbf216d3b234652c06faf32e04
Date: Mon, 6 Jun 2022 13:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654522319
