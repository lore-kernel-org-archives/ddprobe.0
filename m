Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5D223AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660411252;
	h=To:Subject:From:Message-Id:Date;
	bh=p1YpNJAgVc52z6JGUzE9K5C2R/grbiXqQzD80L/g3nk=;
	b=bxXJIcvMDCZdWUnBM2xRQf7bSMPd0aK31m0k2RwTrrusvItq8uFPvVrfLJRJRSPl
	vtDC6spYdbj+LYKc1Tw5z73pqhPlvQsgzsJ8DmLaJFzxiSTHoUFyt4Cy0dRffyo7+c4
	Wp3O6RYrtcwlNVYRT6DM0CN6BG7xDvC8YcGMC3UM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660411252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p1YpNJAgVc52z6JGUzE9K5C2R/grbiXqQzD80L/g3nk=;
	b=NByx82b13a39K+Aard85g21EZWA2QDl1pexRnhuZRU+3dLtfbAmeQa2tSG3AN9Yj
	yzlS1BvFhVjTaWHPo7MO5mtQx/d6SVlLj8tGHa4pq4+C5WOvaYlpFEVkuEEEKcFnc1N
	oZKPVTmkdpdzSH0LMWDdBKrsj+Y2WpFgBg3y8F/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298390f9c-cf9219cb-05c6-4177-aa66-3de0a5d8815b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b09cf7eca4f0f7fc75e779a3647c3efb7d38c3f29c252f6c0a97b8edaf29b32a
Date: Sat, 13 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660411252
