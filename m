Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A9F3FC7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657633012;
	h=To:Subject:From:Message-Id:Date;
	bh=sxM0Kzdb8rX+lgPWi88wh0nfTTighG0B4+351L3QlbE=;
	b=EWbZWnLPvE+C9TCTSZ7bqG8ck1x4Dj+3YRXDyH0hd06n0KrkPFlk05ZjLArzRn9E
	PGA99vJfJNJUEdTce23zHdrlGZxdEnXp8WkhZudvEw1mUBvzCh9QQTDntoYpcOXGXqm
	ysFCio/BzQGPKlDGeHrwfXudSmRKiOV+urmTHt/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657633012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sxM0Kzdb8rX+lgPWi88wh0nfTTighG0B4+351L3QlbE=;
	b=Jo53iSRQredCQepXoMA4SnunETToI2YqmveAoK5mECtY+2j3uXwd8uO0CiEydktT
	pUgQGaOfS0yhCmS4WrQTeGC2JN61OMWeCWfI2owBOQ027KMjGhUrn7IdwoKkZpf1A2b
	N5R0Ty49E57Gn3eA8ffV4LbJC7GV1UdNjoTCd8UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2a07a70-a94293b8-9381-4ce0-8405-491d03492436-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06aa690b22a44a2a978b6b7ae928d9550833ade095d0b8d3b47955b2a82c9ddd
Date: Tue, 12 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657633012
