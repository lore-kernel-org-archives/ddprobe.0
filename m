Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783F3EA3
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646443584;
	h=To:Subject:From:Message-Id:Date;
	bh=q7/LarCda+FBYAdXb2RdBlx1TgCTgk+b/L0cC4QPfMM=;
	b=P2stDbeftm/8W10o527uwidwG9Kvy6bUagpf/vD5RWLOv1u9hHo+6B5DwtYR2wOP
	Z3tCsXAgyd8Fxhly92AT5WOwTVso8qQPsNwYeINBb+srZkQbYRrPhqrlnTxOdvsBJ/W
	swqNPylPnA4oW4PM8KsibHLhxtdVBw6srbqK/yk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646443584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7/LarCda+FBYAdXb2RdBlx1TgCTgk+b/L0cC4QPfMM=;
	b=fi2o5nEnE+fcAfKH8Yx3M6eS43QtSzJHonLLsqVpNW+seqVkB3OBm1TIFWe8fB1I
	12eN9Ty7455EI/xNb4b0xmU96zSumRhAGOOaNbkZc3ozDlaUQNbdjUV314Iw4BUGBd3
	SzhXzwLmusreN7I1DoTJHmQUHNJgABQuUNfj/QoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f57af5ce5-6013ae43-2c2e-49d3-9311-bbaa38441a5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2ea15b882b7fc1cc4a9e676839530eeb273de9c074dc662dd6c8da73ef30a95
Date: Sat, 5 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646443584
