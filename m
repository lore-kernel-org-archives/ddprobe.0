Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81FB01FDA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 20:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655239859;
	h=To:Subject:From:Message-Id:Date;
	bh=J4TLNdBQctUvW6E1CydUlkC8BSaNPvsUAyk5Z9WSHiY=;
	b=EXMOi54aLsCJBV5lkfloOWTuUbIXI3beJIPzCw6RE0PIGhU/r8ZYz3J2DxQQ5KOJ
	l2Q7dzQqsZY+TzFMv7lJIi9FOC9jg3G2L3jxJfNNm3wBkyYYt9JT1vybbx3PcHaRbHv
	Lv+k9g8RB9Euu44udLlZCURQ3r9VJqXL2WJ5pz54=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655239859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J4TLNdBQctUvW6E1CydUlkC8BSaNPvsUAyk5Z9WSHiY=;
	b=T6g332TV/nQuIzHZ20DCwU1HJojegrfKoGTk6dZILnG0uYMRvXADDdMkclWBvFvD
	vWnO2daU8pi8DiiZR5sqhHoG4SbSniUJdLMH/vs8RVB9wdGA76Q0euEuBHJQeFcAig7
	vyF+10RPf5H29TPhteVcbO0EQ4Gws/+VDetwPfP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163fbdc35-8767442c-15d5-4b4a-bd8d-53b78dcda09b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f359284f502147c1a37e49703fe3a572ba2d0971d154b316bb7e1785c1082d7f
Date: Tue, 14 Jun 2022 20:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655239859
