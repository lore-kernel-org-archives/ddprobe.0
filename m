Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD3D7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 07:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654673699;
	h=To:Subject:From:Message-Id:Date;
	bh=THuc60psL3PNndKTfH1zSEXkEUbvhbHJs/ylcWroHRQ=;
	b=WkKKx/W7tC6e02AMh5tG01u7V65hDC3s9tWtvQEnKwQCpGGpEX7zXoJRJXZ7Pm1N
	uf9R9KPNiWwv2xurG8/DUHwCwZsP3km26t0QMnWDuI1VRvj8smyzPtzZ8m5t5tg3ILs
	aQt9U1odQz23q6iBwW9sS+YFyVJBDORpu0YLrmTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654673699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=THuc60psL3PNndKTfH1zSEXkEUbvhbHJs/ylcWroHRQ=;
	b=PHmcWY1j/v2sEJk/aUdE8CDNFJsB8UpgFUiroEd3S5ZPcq4klmz2NBzh4lP5W43j
	ocv1Oluv7y5FOASr1WvWEcs0qhOQgymmtoEVsgEhk4iOdg2yzGuOLBrTp2uTNzsncUY
	6YRAVQOJKs0ZIzDhqnMS9nWICvp7JTyoEDhQwXKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181423cf1c0-687b9b71-85fc-4e0f-ab46-f6129d156ed1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4045cafcb87be516f0405c55363508b61e3bdcc41deca274989f0b9d1d4a510
Date: Wed, 8 Jun 2022 07:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654673699
