Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CB43FF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 00:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654819319;
	h=To:Subject:From:Message-Id:Date;
	bh=gSRM0s/ToMrGyHas1aTadQgPU3qNPci7KNmDAzzco80=;
	b=VBmK9EBPTX3g6CGyH4qQTEjBiQG/Z1STfi+5Ej9uSObhbVJB8kG8FV3Wm4kXvDMT
	1uy1NudnRM1FdulToXMhw4OjLg7PCMMkkGF10cEx59kDTltCG7Iq6CuRU3dYfu++Ut8
	L5VCdePudEP1hwSTCo+t/MkBWNgboVG0lE3yayNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654819319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gSRM0s/ToMrGyHas1aTadQgPU3qNPci7KNmDAzzco80=;
	b=HqDbQRlYX46+e+ZD0Q9fZrMKiwg1GmQpnxWKa2cJSHM+yp+EmqxYQ89IHAJ84YPO
	zrbw4ifKeHDQXxwaq2qgd8uJ2aS0UM5NHuAVqVHzPsxez6DVhU2kasQSzNZ7gs/uoNK
	1vlA9hCnKQw6ahuLTJ3BP7n4DABLaAh5Mvs7aIhc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814aeaedf7-9c4b562b-cc35-4ab6-b324-438fdc70befd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d19c6b91ea5505d600b02b1d77335d1940424eea6453905d1633bb4982ef6930
Date: Fri, 10 Jun 2022 00:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654819319
