Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA9A3D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657313212;
	h=To:Subject:From:Message-Id:Date;
	bh=uH8yPL9LxR+b/75jhCd0dHt0MZrMoWp8CJUm4kMksJ8=;
	b=iscslZ0JF6iKkiSnSaic8vp56lFITGfJ9ji/p/S8K6Y2djhptmkWBptJaAFxdT4t
	FJUGaFoI+jYH8Wlt7S/n15ibe88/qaoOvPZw6VbkUqtfT3uJIyl7UCxe8peFPU3GQ3g
	537p8QFdUofaBFcS5lVkyDNiC+DgSUA5KWRic/ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657313212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uH8yPL9LxR+b/75jhCd0dHt0MZrMoWp8CJUm4kMksJ8=;
	b=Cu4SHZZFkUljjHR1QSh79C2+8S82b0Pewswroa3e99QQJ2rlw4Q9U6rBQZ/V8TMh
	t18X71HppDQDmWv6s9uQhIOKQekA6cV1mppAbO2hNPiJrZ/JXXChGCLQWosm7o1Dxwd
	rF6pp5MbPLGo7NW9DdxtzRYW8S321eNbTqfe35Lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df90b778-601af768-3c9e-49fc-96e8-7abfecf3bc78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6545526608d1748381274f1982aafdcb403fffc1e98255035d9dc70961950b9
Date: Fri, 8 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657313212
