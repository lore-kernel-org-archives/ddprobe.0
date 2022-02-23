Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6976AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645643785;
	h=To:Subject:From:Message-Id:Date;
	bh=VnFINbjUnJajqwo+bMqagVqRVIo3cAWH7aG6bHQXpl0=;
	b=UL6/b+lgumFD2ukJ85aB/2jXpWVu6jKopRbMeAV4t21s2mOCj94Zm0xdoR7xpy3U
	+5+qyCpTEyAK8jZhKOpuIvB8Zn/gVX/4wvcaFrF0QBVu0U6US2wCLuGAYmgtJDW5kve
	RJfs+xUdwu/oxkLtLj8zFgEc28OYFpfrR50qgp48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645643785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VnFINbjUnJajqwo+bMqagVqRVIo3cAWH7aG6bHQXpl0=;
	b=fdF2fhnc0TL44b5byFnUI+H2ttFoTD5I8Qf0iffVw5gvIK6MDROyabLY/fclmTDm
	JXLxYgspVmUwTd0VONo0NL7BJonFsLlEPxNxss2N3ygO7heCCIbvl/cYG2bz8RV0KV1
	S4HSVg9ZoVky867I5MoUyrjAR1d94w4nT/P5m1tI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f280362b4-bfbefdc7-a72c-4384-899e-45e6246d8901-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0328c3846125bb8852a59f6fb85e5b50a4c8bd02c37f249e77576447908d1fce
Date: Wed, 23 Feb 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645643784
