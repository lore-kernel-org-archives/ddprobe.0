Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52B67A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646461885;
	h=To:Subject:From:Message-Id:Date;
	bh=lNLk1JVWVkvmTeMU14Vx4ZCQoS/rdUuqH4gbEB4PLpw=;
	b=OJjKBrnxgd1h+mhjo8sXbxdEKux2pSm3Ba6ecTE/X/Fy79hEGhCNsBCwOEfB6zfJ
	e2n5WMsJ4F772ApHwcTQwdMqzsnp81aVA3K5FkrUtPNgs1SM/ZMAXj+AWK7W8zzvlYE
	JdnAN9J5O+uvPqNEXHReR2myMwhXs4wc206vAnOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646461885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lNLk1JVWVkvmTeMU14Vx4ZCQoS/rdUuqH4gbEB4PLpw=;
	b=Dfm00PLak156l3nJZhyV46iSMMwmoingHSgP7XjUInjjoBdqFrt2SjmpC8gFcb+3
	ZZwbxKZDGKX5cQ4P21FYxQnS4Ijqud4mmwEhdq8Mrr07biml0q2OGKDbap460Cc61MZ
	BQpATPs0oekWKLHNFiB23BpFsKdHM8fLO7SGqtKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58c699aa-d00ba367-e30e-4d08-851a-edc8e67797c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1325e78df4d6e3b6569e72f9b26b88eb6552a02d85b2a2f13c8e0719ac7a2c95
Date: Sat, 5 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646461884
