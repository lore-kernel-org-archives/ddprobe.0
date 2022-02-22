Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B45625
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645509084;
	h=To:Subject:From:Message-Id:Date;
	bh=U0bknDIgyUqz/jwWBCtl3iBBHYrj8B4PlZfzyYdm8WI=;
	b=Q1dMxl+l3vReIT77gpI0P26fTgYGYAnOPHUUIrUecd2wTLEvSFjE4fve4FO98pLE
	+oEKICxmIKbp/4VVyV/8XOKPqtwjna987RioHbsBHj05faJlbXSmRtT3IJ/GSQhE8R7
	B3t0tkLHbE84We+eSp1IMP/JyvQedTwYRHug+BIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645509084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U0bknDIgyUqz/jwWBCtl3iBBHYrj8B4PlZfzyYdm8WI=;
	b=Ohnm9nZl0S2keVpgyR05GahEbYREnb2SPomrhrHrlYJ7+OCHCkNu/HXN2iA9MZm1
	iaQ0MMFHqo1rIksGyV2/OzOU4vP18tfVZ0cQvpOZX7jYMOoudGST1DO7WmaDQ3suooK
	mEDypmd+0TIsAloowpCRnGNM3PyQvwM0Uc3F3+hM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ffc067a-5b4f40a5-067e-4434-afdb-8d4f2fed18e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 477b22a7836ef0a95ea7d2201ca5097f3389f10a2cd82775a67fef98d4fbec97
Date: Tue, 22 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645509084
