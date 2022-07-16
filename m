Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AF9362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657955813;
	h=To:Subject:From:Message-Id:Date;
	bh=TrHMo9v/OTk419OtV+4Q/qBO5hsPAS1V0+cTlaByi3c=;
	b=Ktvmtqn5MjDlXtglhqgp4NorO7s0QXtvy5huSAsrOOMTNnIejLND9pu02ZGB5BmN
	RRvy+19h8Djxa5e26A7eJ9pBIPaNq0PZ1xWOE6zTS7gtbaZQ8HxotC5ZbebP8LAihPz
	6UDc9WUGlJ7U9uFRN6FHfjTw/vB0nydFFXhe1ybw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657955813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TrHMo9v/OTk419OtV+4Q/qBO5hsPAS1V0+cTlaByi3c=;
	b=I8qVuTiTmSHC75BPGfFEPNbgoo15i3Bt6uLyy/TmCS4ohlxfsTC5qGanosiXxjgs
	WRh9dzt5+2Aq7hzK/2TtftHzs+fXFf+mnZDVjBJIT4mlOAPOcrCUq9VgMk4shAt3ym1
	Nu1hK4TF5iJC+RAN2KhruYurx6Do96cgFG8PSxus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205de03df-96d79224-d16d-4b40-9d7e-83298cc34055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 375cbe56c5a0c6f74c8bf66c7cee47535e9f84098016833ec3c16c4fbdb36c8e
Date: Sat, 16 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657955812
