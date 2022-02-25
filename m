Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98B51FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645788385;
	h=To:Subject:From:Message-Id:Date;
	bh=BN8VJuAYIRbyckKjMguvZoM4zWWeyr0rNswZy6uGfjI=;
	b=aX0bIb1EQdq0/GvLROz03rytiGGULNLgZZPibBT2YcMS0f5JRoktGWLHBYJNODNt
	dnhHzmVhz17UoTsZWAM8ceu2RMd6RKq60XcgTiN69Pu13larEMxXG9d0y0hWLIv51fN
	DoX7TXovkvlc1Cw7vsQAkI4UhIasnIEvUpL5hDcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645788385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BN8VJuAYIRbyckKjMguvZoM4zWWeyr0rNswZy6uGfjI=;
	b=UqU2NwSTFqeWbEyMEU7/KZbLDwwmYyTH7A0PFelSE9U20pG2YFArwdKlRVs3ojdd
	ykfj1ZWMKd/XpqurgokYTj+LCWxX+SZfe+sbP31VsPpsOFTAXgzryD1OzoGOeoY4+Ow
	RcsV4veR9ZUias7fYsc2V+E6xgMhtErhTifj95Pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30a1ce10-f639fcfa-3e3c-455c-88f4-b4ea51cba650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cd6f571265a79f53f16345b34a287e6c9f7aa14e0bbd33dc057b4b5f6250c5a
Date: Fri, 25 Feb 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645788384
