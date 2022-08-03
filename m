Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A9F46BA
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659560452;
	h=To:Subject:From:Message-Id:Date;
	bh=nnYDif0GfcFBhQ92UwpnIaKAgV6R4230cZ3q/QrM4HY=;
	b=Bsu3bzieLsy6YaGSHLORo9lgYEwgGjmThBjoj9TxPv+JrtzLb2RHNYxp4YAwlKaA
	yUXD+ZcNYIX4KSsm0G80o42QPiS0SHBviDn0C78KxCj55yWX/UInVtoUt3hlcGmYmUl
	Ggd0PiFr1P2mrQwECqXXcnanIyGP3uAS7HPX8Ou8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659560452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnYDif0GfcFBhQ92UwpnIaKAgV6R4230cZ3q/QrM4HY=;
	b=R4hbN2SGIZCoH+nmh+NsVDBGBaUAZuSs/A4HNQ8G6ssPC/O2NrCzAkE4D7a6DnPP
	K20YiuUBxbTI/iY7W/Ory981iFysOJTLjlOyikyHXLAbaXVZ43VR8aq8Q203PIPbX0h
	Jpfg6kCRV8ZMEgS4OCOg0D1IpwSKcYONml70ixTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826582e1d4-e039d896-bf9d-4be4-aeca-5a60e0d5dd9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3c72eae4cf32b76305e520c35ff09375b7fff71689e996aa49d614964d301f
Date: Wed, 3 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659560452
