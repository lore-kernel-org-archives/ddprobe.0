Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BD51FAA
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659171052;
	h=To:Subject:From:Message-Id:Date;
	bh=gHdK159EtfaQocwQqXAtcnbZ+cO+oihdrR+gGIxEqVY=;
	b=T0SYw4Z/lCp0DpnAWXqxu8Ra4al9nS5qb21ckxZayE3hvKFCbyVG3ukPFCrrZ6lX
	xPVFKVGKjp5tgQB/d3j9twQOzA5aic62fK1nnCCHmpXz8Ph3S+ck0amj5EQgPLEmQ+Q
	8wlBFweSj0wDy3LI/QC6ptjhY3t4S94JaxAmqkFk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659171052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gHdK159EtfaQocwQqXAtcnbZ+cO+oihdrR+gGIxEqVY=;
	b=Wur2FzthSlQ8zfSgYoVnfL1wCfLXY/OW+pLq7J896BEAAwQMn0E8ZR1lhYa9tb2K
	vtOOiEUe0aBVbLequDhT6Bp3/7uzNYUIfihvpczU44pq5HQl2KZIDqbetscZOU/6VSz
	lHWxTvJPmy/M3CzzpGORDSyogS721CcRvE6c1ZcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e4d1c15-ec3f882e-b646-424e-9a7e-b1f0405466df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbee00f17c7c40c9b997d07cd0018111cd5dda036b1194286f7132575b4fd28f
Date: Sat, 30 Jul 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659171052
