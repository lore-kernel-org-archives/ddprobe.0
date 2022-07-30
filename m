Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8943C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659224452;
	h=To:Subject:From:Message-Id:Date;
	bh=w+osNuzlEabyPIoQM2ld36baP7L4ajBTK9wZcZW4XBk=;
	b=II1MQ020IzterZUZQg7YCBFS59U54rJl0QcZ0f/ntkXjFlgiogdWFmkCX6Iiwear
	nNW3r9RXGty8qR7eGHbLPDNEehtS/rWSAiAQCP+Exfg7XiSRZYTFZybK1X92vYL7lbz
	X2OnxLpGDZaeTD2tkRbKA+sk7biTL2m2vyEht+Ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659224452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w+osNuzlEabyPIoQM2ld36baP7L4ajBTK9wZcZW4XBk=;
	b=hk1rqGlqoZt72QubcTTV0ZNr2ahe4pVjCkwLoFv9agwqxW55fiO3zUkI5nGyA1sw
	NNd9bRQMmqag1g41eSWVcKwt/Ocb0NT600FIsxhWAv0uDjm35U8uFtOIxZXGmNxDeyr
	VOsTpVbwEhpzZYC1ZQjfSa7dhmiK3jUhSIexhkMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182517bedde-35320716-95ba-4ef3-8e93-b5b81cc59a3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94f7ce8f8bf3b5931ae2c1ff2a763304bbcb167082500dfc139a8874c70d80cd
Date: Sat, 30 Jul 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659224452
