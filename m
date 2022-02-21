Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B9C2581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645441284;
	h=To:Subject:From:Message-Id:Date;
	bh=kg20Y2e1T2SB64QSD5JV98SL8kAA9rIC7sd8ijjrgX0=;
	b=UIbS4gqbEdklBYMtAGDsnNySa5lb/wU/VanVNKVJiyeSM+Sn4rfN29YgMROlr/lL
	kZTCfAwFQNBvJgtgARbX0AobDkcU/n/ECEQ7WAPATV0wEte85I7MBxzJ5nIgFvlBCts
	n4vU/XVD6MRAzOqK+enlTwUqkqEuDfSWUg/CPHv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645441284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kg20Y2e1T2SB64QSD5JV98SL8kAA9rIC7sd8ijjrgX0=;
	b=jpPrreiKS2CyA4yZCrr0AhZpxUg49W4Ej+TyvjQDYnBbliCwb8mDDMPhcsnfS9Uq
	Nr8MGm7/zeflmiTGUd8hSWveG+KI29qUllOi+dAwU06E0VGCAC+FIzaPd4OXSVe25oJ
	PGy+AzGjPr/dgPFsTlp2sGB+3iG+bPcy+8ma7ZqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bf17a8e-f24b547e-b170-4248-b2dd-1a20e7bff9b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da6e3fcc2511885c2c03405d0c13362eb3565a855fb2f67d2611179ad3064686
Date: Mon, 21 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645441284
