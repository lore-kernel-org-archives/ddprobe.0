Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293705C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659305452;
	h=To:Subject:From:Message-Id:Date;
	bh=H2f1GANYU9V8eDPAz8mivqM3omuq9li3hMyCKJaWve0=;
	b=jmiepEtGUnYpsxnVlStr/fhSnGaaFvg8L3jQ1UH6FOomrRgmM8Th/gK3uSE4cwbv
	uVUlrWDX7GDdhnb+aRrP6hsvHWbPL9cs9VR5Z9LZ4qcnGU6k7qtu6P/jJd+n6tV3zq3
	iJkofozcCiBSvThgCqRHezPy92u/bY5K4iG7NW2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659305452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H2f1GANYU9V8eDPAz8mivqM3omuq9li3hMyCKJaWve0=;
	b=Un59PTYMjaEG79pePfg1Iz8HOElx/WLxmslijCfCqs7RVB+HOWyf4tsRANIUbAXt
	6typQFczzZQ/XgmxnTJrK5QddOvNyrsko+R1l3PA41cAOJFak3QIkq8qp6B7bG+q0ul
	6Pk2jNPMSNYEVo0XfPsIdGGAis6/J05ghjK5EQFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182564fe410-40533a78-4498-4373-bcc7-a5e43ef5e9ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2910fdd42ea7b1a6c156d99b61b77b0a770eb21ba6092e68f8788b302a015459
Date: Sun, 31 Jul 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659305452
