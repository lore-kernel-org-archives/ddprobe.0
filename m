Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8721364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 11:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655118539;
	h=To:Subject:From:Message-Id:Date;
	bh=H0/Zw1WcJCYPbMTZJQSKQrLlpVA/YtNVkHKmbEXabXE=;
	b=bOO3/cx7bAM7K8ejRYi4CZCILhi//5m7x1iiOEJG+9CzjUvfftCYix8IfktH8fEM
	FVcuGU7IlvM7dUwWuqGHzsovrafBthv54d8Nk1XKuOQJgwDty9IrcClIXDdyQIq8GSd
	ig0Ervd4h654LtvqQ+7R1SsDbVjoadc6dzZHah4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655118539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0/Zw1WcJCYPbMTZJQSKQrLlpVA/YtNVkHKmbEXabXE=;
	b=OpxC+aBdSK5kMckbg0DvSmkm8snmJeihdVghQIOVmEcF2BDjDbsUuDZX3Nz1eKuQ
	Xn0kh5eue/aroaz9axgtDU1M25dI0tdteJpySUYUQoyzW1T4iGWXy31WeETb86sBdax
	OzKReCcYK0Lqj5u6P89t+GZRlYvA0+xGa/OvknCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cc0aa04-cc10030c-3a43-4ceb-80c2-f6a178018772-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 928d9fb033cc7ef10bdbe809b1a492ea640ea0b9e9be90fae77f1dac2c625af2
Date: Mon, 13 Jun 2022 11:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655118539
