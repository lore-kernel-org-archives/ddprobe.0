Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFD628E5
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645263384;
	h=To:Subject:From:Message-Id:Date;
	bh=O/xSyEGfWUqZOzjxenz2FPrtZ1XgVkVNivGOe+UFgPw=;
	b=DMc8WvbKfTHzonVku4DQq/wrnfY2ppoXJspn1nbosW8uTZqoC+ZqFSD2bgMoJAn8
	QYb4lWU+xPTEqatzBUmd5o2RZMAV91Q2fHeg4m+jgeC5IomC8b2dkmlPDk0AY5OfleL
	qISbp7oCBMqSgeqSmsUhbqtMfHScep7m7frVAe78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645263384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O/xSyEGfWUqZOzjxenz2FPrtZ1XgVkVNivGOe+UFgPw=;
	b=EWBFWa50cSSUDVVH9el4itDcPFJrtNGLopEMXOe5QBFguKnFRS7/CG3IU6bBVzSH
	We1fkvvHDz/4j1mFBoBW3CxOqAGO5RTi5cyDl0OQNDcXOCt1Kwv0Gk3tRAeKI5DcZRV
	6i7oPIbKR95muHUyhkYFWGuox/KpKQTu+lj5Q7+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1156f0e4-b1335e3a-2edd-4f39-ab18-07243e2e19dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 599ad1ca19e24cf354ccf2616ee88da1d6afe0b34f6cd03a807ebcc5404de507
Date: Sat, 19 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645263384
