Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1711FCB
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644987684;
	h=To:Subject:From:Message-Id:Date;
	bh=CsqMCLZAhjP9Esi69SROrklVKbRBZp+2MWa6T4b5+aE=;
	b=Im8nE1v+KSJKvrrO4y2gypKZrYgJkRnVFgFO1SjR3537o6YJLqMOwdpaTXySEzVs
	myhwAUXifLtvFfLV8wiBeRgqFdzhKmpLHpaDbQcE7seRKV0G6hNcPSPlgYNewL5nE5E
	/AR6R0tGA/IP4rvhIoWDLolhNhaPmQG/Toy7e95I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644987684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CsqMCLZAhjP9Esi69SROrklVKbRBZp+2MWa6T4b5+aE=;
	b=PfT9Q60On2urxU9YN9RWkKjuNiqyH8LiUjTTNp+3km4kQIj8FJqwxAnCnYI4BOt9
	9xBLHhbuAZ3RHg2CCl9ST0mpNydtIN8gpU91bbq1cWksv7S/XB5WVfcLRm2EvHOoN0t
	BjMExlAG6NTxS+5mcS/gOIU+rOmF9RqdEJm/9tdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00e817a7-8bdaa8be-bef1-467f-a11b-4d5f0d53a7ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3721b7524f330ba142b4493a0679d2c21f5255165a6e0fff0469c77373521f60
Date: Wed, 16 Feb 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644987684
