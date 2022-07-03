Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF833F8
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656875212;
	h=To:Subject:From:Message-Id:Date;
	bh=SfOtktZR2V7rMf2e3NxuaVnmw0pOP7IKIBitfU1X2zQ=;
	b=CkhxHNNj+4Ca1Rg1ttaUepU3B5d0cgRfxXGE/reWArZdd7uANtHCioNjPJUUDn54
	6Kw8Gyjq6b+CvczkvjPHrrxDVjtus+Ud2Dpqx4JwgKrE29pUf1pB+fEduY32U0NmimQ
	qyLcN8hGN/Z1ICNRF+Fkwusthb+bN79Lwfcj2kIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656875212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SfOtktZR2V7rMf2e3NxuaVnmw0pOP7IKIBitfU1X2zQ=;
	b=LJzokd0JtftD5OFwo7Hyv92Cv7wed/MtvJlEOEkSj1FiVSvN6+0DG5GtGqAYfyQg
	YAuOOCeOLA2EhqxHyhLj2gyCysrHv+P0HCzdrmuxhuGqmHOjPu0kTCP7tAf4Qez3UTj
	N9YHGmE3DKoaO2RRrCIkMEJudP+7OkE9I7i/ac9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5755e2b-0fec433a-7c2d-4abd-b126-e01648509153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f34700ccb13d3091c3a09408e207744f233297af23165028326f88eb8ee7ef
Date: Sun, 3 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656875212
