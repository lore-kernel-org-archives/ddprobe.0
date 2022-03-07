Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A6438C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646637985;
	h=To:Subject:From:Message-Id:Date;
	bh=UAKtwfV/czIovdroeE+50/uYfikYg6ymnqAkdApSGDw=;
	b=RzBwEKofccfQ1sz31I7jdYTkSzMx0blh+StYAe6Ur7M/f2fYssiJggN8nNyQBDpJ
	MbDk2FbuiqiLohE18N+T9lLOmuFJxy9+WTv039fc4NyJHzldLywykBj14nNzWkXWglo
	VBHtRliBxkm8X5feXd4+WnDV+7Lctva47gwFQFJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646637985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UAKtwfV/czIovdroeE+50/uYfikYg6ymnqAkdApSGDw=;
	b=VH+ZFuj9006P1PJp4rEyGzEZAObHmyvgmCMedPx7QiP0rdnf0XCT3umE1A9lQyd/
	1aIzhY4AbNWyFiqIAegFzp7m2Gm9EbVxxo1RIMhXLM3LTzI6a33Hj1v/Ps1kaptAhBk
	VbxFLFPRyk10BidJ+rkk+xb3WZRCaS24PHwX8qj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6345abed-35cd1d50-b42a-41ab-bcb0-85bdc4eb06e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6d537a75297cee8cd01fb1ea92b4d87e71dde2dcfeb1ba0070894d103e854ef
Date: Mon, 7 Mar 2022 07:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646637984
