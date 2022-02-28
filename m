Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EB94C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646016984;
	h=To:Subject:From:Message-Id:Date;
	bh=c+tZ6DsP/Os+Gb25OqpOre26mIsBnGe8TolMJHR3FTg=;
	b=PDm1TG7etbrJCGZHTfQymGfXjyZXbixJ34ynsg03EaX609Kot1lHYdlE+N24MeUJ
	iJOfxQkXmOp8fotclgPLJKtJ7y0pOSRC0f4Wka+W2KDbnm5IJUrrqhsunHjYo+i4I0n
	yfWhJd08O4EU+USBsvEocEdwD16OBkLgM/GkM7Ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646016984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c+tZ6DsP/Os+Gb25OqpOre26mIsBnGe8TolMJHR3FTg=;
	b=W2KpmjqxxNLYVwNdlA88GCw62ox8Gv8YOsGl3dTUyfi/9LQWM8jKNFHBjsZvaIh6
	mcQ7yTMQ3J39We9Sif4LNaQA6zgSKotdXGjMyub3zn+ccKcJd68G/9LZrGzVik7x2qd
	Bb8U4tAXAw/jzKo6AZrj5Qz7jhc/PR8rNhwJO2Z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e41f6c0-2dc06715-b2ef-4b07-93ea-499c94f6431a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca337ac503ae0cd35733ddf06e05e7702f422441f5b0c7f2e47111ddbbc55d9f
Date: Mon, 28 Feb 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646016984
