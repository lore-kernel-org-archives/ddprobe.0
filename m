Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0061FA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655266559;
	h=To:Subject:From:Message-Id:Date;
	bh=M3fO88lMaJGn15JLPxrp6ZFbygPC60uG1YxkgBhm35Q=;
	b=Gh8zFi9H88guD9G/t8R6EhzklBcIZ8cXRlpcad3w+AKlb99hUP3BYFhqz4zZ92ur
	hufcTlWhqG8eI8ScrO7R662LdBjMtLRYAPfUHtSoMX7ERzGMC+Z6w03+29QkcszACRw
	v0saLtMYc17JvPDzyg6aWciiYDYuoywKnBAyYga8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655266559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M3fO88lMaJGn15JLPxrp6ZFbygPC60uG1YxkgBhm35Q=;
	b=c5/CpKpZOZqekX8K8rSiGChXuWW2ULWuBJ86p9uBn0AyEkRfGlHqVIdNFouemdwG
	00E9fUNI/a+0PzOb8ekGTcnRkTYYeCgkB3QwrL6eo7ivIdzF5/CgdkVyJw81BBd/4Di
	4nm6pnl+rLRwkKZGerRAKkcke91kw5uCZpcwEgkI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816593450b-765ffa90-cc68-44ff-b9a2-967302c64d6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35b33d525d4d3368d048a5de5e5be8d8c3a311450f033efb5a0cba2f53aa01e4
Date: Wed, 15 Jun 2022 04:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655266559
