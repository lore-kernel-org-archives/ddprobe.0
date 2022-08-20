Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406422C9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661017852;
	h=To:Subject:From:Message-Id:Date;
	bh=5rrZzzTW3oQpm0OsPsETlBguNqU5zBjJWzbrrsLuFEo=;
	b=YRKzZVw8zTixvCy2hJPsehH6NkdyaaEC+3gAPyxMcw3iDTr10F+6U8sH5QrpUBns
	Nc6acb4JSyZl8bbBQtO8C20HL1u/gIt07Tegub6oynBolows5+70QBrqJ4ah2lm/BcQ
	nGhUhR1drbFjnYi3CDn5Cq/Vtc88xSK2qMD/3nxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661017852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5rrZzzTW3oQpm0OsPsETlBguNqU5zBjJWzbrrsLuFEo=;
	b=RL1Lupi0u0TSbq4ebxc1AKj6yjvdDap54/ODViSP339czyEpyu/4c82VVKWCbbm9
	9UVlo0TcH2SaIk8X5gIsp+dPOmqDViqPmefeZCfc4G0hXdoemlUizaG99sUqCc+hhuf
	u6cXtEcdTBklCqEuCheI1hvBCGpyV6putZ5llhm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bc610aa4-3147fb4e-42d0-49f4-8bdf-166a1a65dddf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f6431702d1b430cad76ca39f1fea1bc7cd1c6e061f3a693e8fe3f96374c1730
Date: Sat, 20 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661017852
