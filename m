Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C787F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659364252;
	h=To:Subject:From:Message-Id:Date;
	bh=fmm95mMI8eiBmSL5L7xPVYmgNJ6GjKwMqP1Mqsnc4y0=;
	b=OzQ2FgDnLXiSG/QVM5sy8vnYn2NLQA/dAQa5p+ypY2YgVcYjOAjK5ZbyKst6u9Id
	Lujza4B7z37tstOs4jcBRGLxa5cuzWFqG6XfYrmR0o50i2+hIW9DEqxtmQJVK0qPYsa
	8waRjy6oDBgAcNvPKimiSDPi32JcJqxpIR7de4Qg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659364252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fmm95mMI8eiBmSL5L7xPVYmgNJ6GjKwMqP1Mqsnc4y0=;
	b=J69/SxCPfkyqXh2eqgEy4AOZ/wETHW0QDmj/9UXEnUK1Wrq/77k07AWiJN/zdMjh
	/EknG/iMjp/MbIrMM7vgJY1C4M/i4vgqQTahyELqr2a8tTcM7M0AZh8Nd2NXojBLSYf
	vLzxGl6I2at6tr1U1CqceyaM2xcgG2Lh7/Kw1Avw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259d11bad-54fef8fb-e2da-4594-bb6e-c6fd478310f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd472936892683c90487ca3fac70374747ea11ddbbfe6436545e0f964f27590
Date: Mon, 1 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659364252
