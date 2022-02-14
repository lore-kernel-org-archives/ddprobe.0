Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08F4812
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 14:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644847230;
	h=To:Subject:From:Message-Id:Date;
	bh=efYvTd0hCS7YxeEDEtpoIz78LXcLSaQFESEivugUGlQ=;
	b=HxSoVsMXrClNKzvNow54lCboYWaGEPbdaQ2akPP9FjY/h26FiJVfosEUi+NFUtbI
	VEoPj4+Zo9xDxxmy0vFGTHQ0EJKBEQJvIW0F6KXR7fkZxhiPxosgGowUL7cSAQDPKgK
	mXqC2NXnbt52aHNR4IBYvA/bgKfGq7/GDvIaLP9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644847230;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=efYvTd0hCS7YxeEDEtpoIz78LXcLSaQFESEivugUGlQ=;
	b=NIjVewDp/Tfg7ALY2AKuyeNfVp7q66CmB0T1qzzhnoZ9JL+9W0bA9D1V8FBmCKiD
	yGAixP6PKIewYF3dv9ar0izaWrkSMouWKkLZaGxTS21msU/MTc4qwC575Dq75zpL+hk
	0fIk0YSq42FJ8CJ+Q6L6Zh7Pg1KkfY7iNRGBsDyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef888ecf4-a2f729d0-f623-404c-8de1-4759f73c3e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b786c5318cb2c34cb0713c6ca89e0eb650176eb9d5f5d02a74dd64829a92fc
Date: Mon, 14 Feb 2022 14:00:30 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644847229
