Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD6C136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652789099;
	h=To:Subject:From:Message-Id:Date;
	bh=yj0O9H99UCX4sy1+A8KWPj8MN6xIH5aDudkbeSUE/Mk=;
	b=i2R/iS4wUbFBZdRN6boJvgUWs3GqAwc2r0UUdfMXPH2x66hxLQheJD2pjq1gFvXH
	fU07uNs3qiJeRuxnVtglCeuafy184ZW4rKaqh08pD+YxFRvt8haef/ZExcqut6EkXty
	SYWlKO8ZHCtIKn2jY1A9nioxo3IETAQFiFCms2TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652789099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yj0O9H99UCX4sy1+A8KWPj8MN6xIH5aDudkbeSUE/Mk=;
	b=h0CnHglIjl5l6EEZacDC16sbG2z6kaitreqKqWMjU+UtYVw/GBQFxaa7uz7MByKH
	V2v9wy5KWVsb/B43V/QY0E6lasI5PD8H0sih0M/BTH9rh8HiBJwZl8ZKuAC3gU9xo1e
	p6wnmIYwEExj2dOWaQIWID9cfBeI02CnzqMhx49Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1e83b07-b5e7b051-a33a-47eb-9912-866a06e92f4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ce9d0efb3469a39d2b70c8d9590bde3c9bcdf6503c3773ac7a9e34a92ddfa5
Date: Tue, 17 May 2022 12:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652789099
