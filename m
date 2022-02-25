Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83C210EE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645758385;
	h=To:Subject:From:Message-Id:Date;
	bh=H1SWDaiHAJS8iLRjH4wupVeJBikMJAbMtFbVdskLNyE=;
	b=VDHC88rOyOdXoDPKTbtVCffzKlZkPIALlr5Fk38DTsCp9Db5PUuxduBIjAEkgBkm
	d2hv9knivTRtly4RcOo+nfeRYm+AQdleuhe7YGVwwjYkzExfAMrNs01qd0d//qFwqFV
	zxkeB5jx0Wgr0J8YO0CuZRf/+9aLp+SLal5huRl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645758385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H1SWDaiHAJS8iLRjH4wupVeJBikMJAbMtFbVdskLNyE=;
	b=NwPIvuQnkaUOTgwT+yQlOG8hiRsZ2qyTt6encgWV4w7+RankBazssbICJtsBwSi4
	SMs02QGQ5s0beIb1XMoxVUL1F3kylH7kYxdUR5ZK50vsTVxYn49kvtfeteznArSr10Q
	xYsFqEnecToLYF9fc/bun3mAzMZkxl0NvaP7ZDFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ed80a6b-a01a423d-4f03-4d51-a181-f74be48159c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7290f919863cbf04ef02c16dd0914bd300954a92235a4a369e4817232b00f2a1
Date: Fri, 25 Feb 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645758384
