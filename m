Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C51C321D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645163485;
	h=To:Subject:From:Message-Id:Date;
	bh=uldgP3tR2fr6E+De1yUe4bOhWObP+vUB1tbB0Ke2yrY=;
	b=gDYgElEl9Fsasy/kphu3Lx5TKeM3P95tmhH4vqkaQXp4maUs4ybUYUyLg79OwYsN
	Nhwn1h4jdER5kYuS8uoyx2Adb6k2cuQbzAbrvgBJvlxZ+/Bf1Nhwocdx39ronUARNm/
	LVBPl8GX5Uneb6eZ29tfJjqgLuXRzlDopDJMhRdw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645163485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uldgP3tR2fr6E+De1yUe4bOhWObP+vUB1tbB0Ke2yrY=;
	b=HiwrLMheumiH56JORfOeSGu48x2VBO/o3VomkZ4/Auf/iFcZ/MpPfyIYlg2jVQqY
	7Uj7mYG5+h8DIzhO8+aCA5tzV2ULXSoJuMNYk/4twKsfGP0AgBaIQ7ZnFFQSD0MtoBf
	tpHmMn8oo5qfJ9HqyY4NXv4KgcCiY1yzaTJd4sQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b62962f-67d75d48-585d-4af4-9824-0245e8b675bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a80ab3570eba251b479a74d7501a668672969e74031f1d8347822ffea2be1b8
Date: Fri, 18 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645163484
