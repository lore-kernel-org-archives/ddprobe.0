Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F0F7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646539284;
	h=To:Subject:From:Message-Id:Date;
	bh=wZjoAI4cTSLxhuldIZfhs1pFtEN7mS1CN7a3NMv/SZs=;
	b=Ch+wHidzyHbovHFhYlo/6ygEyLXnw58EImnNJE4TiVwKkRBil4Msnt3qXzlS8zVH
	68rfc/w3/uccqLfepN4zXeNinIDVZWxyjc2ZV65n5hqlXPQw3Ciq6I4NfK03O30uWtn
	4NdT5sGFjeSAEfdpiWobyQxrRE/2ORxOWT0sn/vE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646539284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZjoAI4cTSLxhuldIZfhs1pFtEN7mS1CN7a3NMv/SZs=;
	b=arF9lTn+iFC2pXUiY5SXfqxCI6Q62qwnRstmRz0rOmdBojAk99lLeUKB7hr7a5iy
	f/a6Tw3WFZSJheRamh+cxX4E80rCNnb4BzrGVNmTRnilhFjnLv6/ys1g7azWXhRIePt
	YRS8xjDggwIdbhRHv/jUpVOpgg/2Pn/qII2+XcIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d63a146-9085f29f-29aa-40f2-92ec-18c4bd5b86cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e20d9ef5374643e2d3bb6d64378a6eb9bdaa371b41fa6ca18fb9e4c934ac7a1
Date: Sun, 6 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646539284
