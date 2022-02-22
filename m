Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854A97B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645554385;
	h=To:Subject:From:Message-Id:Date;
	bh=ehNQewKs5mXq6GdXfmcVmswxc/G894P9+g2GnJy6aho=;
	b=PG7xOWaTFZAuSEKEVV5Bd1a3bNBWzUJyGwzm8+/IY4JcqNLwUK6z3DIpk/Z8Drxr
	HdcBoXVTt8FF+eXmELvJshsdf5XwmO+ZRbbcHaMqCBn/5/wEnZdH02tllvZfp2F9fUX
	hM4a4flFdXs3A5WL38C2KlSYmNelhkzN0DHKKCPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645554385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ehNQewKs5mXq6GdXfmcVmswxc/G894P9+g2GnJy6aho=;
	b=UugreC/TGxKHDM4iniHMF0dAxF22rdra8Vg213DwoStA/6c8fDM21kZRr2B+h0aU
	uKxYixNxqmZHKLBu7o2UZjdnKQ8C4rLPj2bWjiofn8M65o9DhHXBuLfJd0ItghGura5
	gWhCmZsk+ZXoJr1B/A8/1kjmTlw8ENzp0yhmBggQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22af3faf-bac3eb95-e014-4e0c-8d18-4e11afb0f933-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65916dacfcb82f47a40e6a9797c56e958406d0cb2de9df1b3528d89da86f4676
Date: Tue, 22 Feb 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645554384
