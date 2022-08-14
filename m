Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789552573
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660499452;
	h=To:Subject:From:Message-Id:Date;
	bh=shmZjfTAuKq2ODyYrVppOMBZMZoSPBCze38nxdvKcPE=;
	b=gKxkjLK8uVx5Qr8J2cxB2lrZxJxRH/2Oj/lZDpi18iG1z/VIMmVDTevnSNQcV5og
	L7+P5Q8ySMoKdniId+6s5gse3Q/BRlimx4thXKFddMvhYpNRMLqvTRM1qAiFdo+SlKi
	VWGJuy8cR/DjnvH3i14RxEhtwBwGlZTsjrXiHZF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660499452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=shmZjfTAuKq2ODyYrVppOMBZMZoSPBCze38nxdvKcPE=;
	b=EG/1eAagdVJUy/+JOnkrWZqN7pgP5Qvl0KoaeWbaJ1N3Bacb/d+uunyRcvF9Vti9
	xWFmAFw4wsy8fjEaSrbA92Ks4YObzkqwamNWtHZco9vQ3CPaUJMQjm4J0aGzFmD325Y
	LF4oe/or58LYB4NNtP10QIdzRwoAx5FQEbweY+wg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d7ae2e1-3c5436db-7b13-4e43-b788-ee7c8528b8f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9283fde227e9c986ecc61733ca100281f873623091eb9d669741a23c956e1ba3
Date: Sun, 14 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660499452
