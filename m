Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC2D42BD
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647977784;
	h=To:Subject:From:Message-Id:Date;
	bh=6EEspKqtPsFHUWYobN49MO5/KL9EyiHIn8+jMWpBSd4=;
	b=UwQ2Qze/LWh4Bu7yTHIGMWAYAfDhn6+bKamUpJEUKAA2KVbQQeiBRKqASso1v1cU
	mJEbDz2Oy8T0HqLqdGoI/M6t7kIsnf43PmFdwhUnHpRZrGmSi28T1/AnOJRm+DrJTN+
	d6ex07wGxwI5USDz54drv8/P0Bjqowlo3ckMhY9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647977784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6EEspKqtPsFHUWYobN49MO5/KL9EyiHIn8+jMWpBSd4=;
	b=RCLWJX7wq8XyKEqR3WgjQrCfEeRtzc23+mkEdLeA3OnrwQpfdPn2LpO5OcxeYK80
	TfLsixNuDqY1/eq4ShZZBkOTRECwwH4r5uvdPhrjS6AajLzOTaZUn5wE/UvyPBouCV3
	0CuMK9pZWKUQBaZLk8R9PvXilKhS2eSPKFic1OrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb32165c3-8d5c4ccc-d19f-43c8-ad03-28feb3e19c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 517d9e8d0ccff3f73622ee486b34f4c2423010483e4c3055821919c8604cc2e8
Date: Tue, 22 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647977784
