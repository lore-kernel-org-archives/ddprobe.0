Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AEC136D
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660343453;
	h=To:Subject:From:Message-Id:Date;
	bh=/8HIrq3nmV93w8VIP516ym8KTu3MN28oYHOdQ42qRNg=;
	b=SjB+Oho7Hc239T+EQAOOA0j7DRkSfRvyyPwSOiFTJE9HAkVLenQuJ3mh2v1PLsKK
	G7eu3i67QXAHxNN2IpgeXSH+am0YW0VHQNW8kU5yX9xiwrw2Dp8CIUJ4ikPPfm2eiZ6
	BJ2c+OpEeYnjRsQVhTU26lFn2B8XbKa4y1nhhF14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660343453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/8HIrq3nmV93w8VIP516ym8KTu3MN28oYHOdQ42qRNg=;
	b=DQD/ZfApx453FlJKO79Rapoi4kqMms6Z5YXGUzITXn0SxLTurpcm1BlZ3BctlC5G
	v7RXPQUDufIkPCU49TyEC21bvBJJ2uDSk3YxZSXeGK7zWaJVY+9Y23NEoQHgRF6pxUt
	A3WxNN5l1NsWziH2KQMDcBR1zxCwRengM0K22H8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182942e838e-28c677dd-8fa9-4689-8620-c1d5313a71ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe541887479f296a43eb9419ff84ccd10950341c5db44f28422d42982acc67f
Date: Fri, 12 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660343452
