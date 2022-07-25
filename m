Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20DB62D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658740012;
	h=To:Subject:From:Message-Id:Date;
	bh=g5flfJBWGlErWCkGg26ZS5frxhFmt9RHQNclcE852Lc=;
	b=Gls4uqqx/LO9s5dJuFCAKpH/NFIH/Hlv52FpoC1zsGmEpx3FBBAlqT9weQkhxe5K
	uh/xKWK9g1B+KmcOF8nEk3Z7pLqBV6/0msnvBu3sk5j/1zpwBdNoKe5CyQCERYKcwlz
	f6sPBp3VDeEND+IFrc/IzrgwGTBxukXPeXDzkMbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658740012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g5flfJBWGlErWCkGg26ZS5frxhFmt9RHQNclcE852Lc=;
	b=cmrARUlb2KkB4wNqMAEgMoHU4K30sU7VghHC1ILnuuTpPkn3jjgm2QqGi7o8Tldj
	cc/kC4WRQ2jQjoN6VG4CufPL7NlSRMxRIywHaxM/LiRVA6fbIqxO9OH7k+gPhqZmU6p
	lWYEw/L8UqIoQe1vVBv1eUMpjo/G2zDukgfH2Erc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182349bf4f6-e996616a-aefc-4bd4-ad59-e78621d00635-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00a666a87927069bb597a2d0496e8de35323e44eaece34c4a96a531887e813a8
Date: Mon, 25 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658740012
