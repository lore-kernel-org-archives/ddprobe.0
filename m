Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736987C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656034612;
	h=To:Subject:From:Message-Id:Date;
	bh=eEl8LUN+OhycpKXf8rKFkTSIfvHy/ZB+Mk1yjwzIBAs=;
	b=TzhYRybG2MXP0cDc7Itx1nwToWGgrRmGLOIXwUm1Mv61VcxPQYOt1e5liJTdR+fN
	7JntXfXdMdDI1Zd5jUkcH6FjuqzwNslMCxrM1lugB+2n4NWgp4xj0eibMttNGoyvwQx
	cP8UWDMCL/kTNqxEn0U6LG4gduNkRyu+ATOBR7UU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656034612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eEl8LUN+OhycpKXf8rKFkTSIfvHy/ZB+Mk1yjwzIBAs=;
	b=Ef2XTGogWBFosq3XRX4mYgHO0Bm16kbdVpGIckbYSalKeFhE2Q1fl8JmlyGLls2M
	v6q0k1yN5zZFyZoBY0RF92fdlHYnKp9pLO4CtFQ5UOYmvLy3m2/trrwCRcAIelKX0qE
	vdmDKiExAvbRY8ocz/gSLcJZDDM39M6AFJ43OM+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181935ad44b-a107c915-eb12-4385-acde-8fe54decacdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1a14cccab397c87caccf9f17fa163a543a6e00d145898d2f74f45d18f06365a
Date: Fri, 24 Jun 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656034612
