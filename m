Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAE736C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660265452;
	h=To:Subject:From:Message-Id:Date;
	bh=CGvDT66PwjNE4j6OeAgA8e087OhUhKyCFSQdYawzH/0=;
	b=kZtWWxnCnA3R/mPtN2zsv/+6JCtnBlrurF6dccvzzrwv/O1afbpbr0ZvmO9a0DBc
	Mf6MZgUmqIbw7UyrMgHPfXnpNRik7bjKRaWj2RF17bJX2+XYd+aFvqVSvFD5Auu+TXu
	vguvr61rigc1JjeGsHB1OwLKg6zUEqVgkHIl9ZQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660265452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CGvDT66PwjNE4j6OeAgA8e087OhUhKyCFSQdYawzH/0=;
	b=PzFjxI0T7ZpAfcIowgWSWuvYu2y5g5dFtTPBh2RT+lG6K9c1g4hoarp89S6m5PD+
	oJCx0r4T/c5HmMQc87VSxHm0ara4xH06cvN/VrZe62a7nIYTs0iJykW1zRsY3FOCR9D
	gITcIWfCzyAyLdYt9t4jsFirOIM4oPLcOHcYLWgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f88540e-268ef21d-9398-49dc-8c1e-3a1a85ab81ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef607cb36a79db2e3c3ecf4ff78c5c5b43738f4433156d29b565f83dda877303
Date: Fri, 12 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660265452
