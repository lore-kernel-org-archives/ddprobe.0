Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB837B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 00:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648599538;
	h=To:Subject:From:Message-Id:Date;
	bh=nmIkdEh2oWBM/Gbqz3g80kbndWYAMD3khZkdYAdg2ao=;
	b=TIVZgMWOPf+YcNo2IDEnnj0ryL8MvxSS6yTFyCemBRVjLtlFn4TW3+HOZ2s2al1V
	oY+1HZTXfSQRMsBzhkiMXcTGVqx6ZYujYuYrTS+ZioGasehnWdDjr2VHHFGRz7z+nNj
	rTCjW/ftXse0fDByc1g0RrIoy0LAhjBmSZtAPZY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648599538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nmIkdEh2oWBM/Gbqz3g80kbndWYAMD3khZkdYAdg2ao=;
	b=fMz+KC6WuQZPJHUvakL1hGpAm2C+i9dNkm7+Ay4eD+3lWHPtFqEKi/uMzModEGMP
	Z7ZezrdUp0XBYe1CogEcPpOn3QPifhv8DwTsBxHS7eZng5/8TSNNt3rIt7grGKqkM5C
	oaHDfOpH5YcYXGw/rta6clkEHOCVt8fYVHvwlFuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8309a41-7f844fa2-9250-4515-bdd3-e4092dc53600-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0b95b1f2e7e0a8a9b11cbad92c2bf95bda5874b1b0e30cecd20e2a9f961dbb9
Date: Wed, 30 Mar 2022 00:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648599538
