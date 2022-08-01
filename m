Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EE97F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659363652;
	h=To:Subject:From:Message-Id:Date;
	bh=ipGv1RZJuJRZafCZTjDCCdL3yD4x5AWVDGeVF5j1MnU=;
	b=dYpEWlr4HKIk30UHrrbqCf/R4sSnFHEvf66Lx5rMmRZdJPs5nKbRUOrXsVRvNmpz
	ZxA3C4sjvt0on8kzmX3Hexou1/6vyR1G6f0mTSa7knJ6nSB1h3+E4vNECAwvGLPzEPe
	ksqi7QZlfX9gKgEtkIVrfDaEOTODM8AzQTt+Ekjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659363652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ipGv1RZJuJRZafCZTjDCCdL3yD4x5AWVDGeVF5j1MnU=;
	b=NEoE7pXD+lKmUIktnVa8PGN4Vj6YTChJx96HY/Hb+a1Pvjc6+GkY6RRoS9DeAC8S
	iuDQT+4RxdlbofXFbyeNTYU25/Ewfsk70czDewp/1pkfYl+V3P1IszgBhlwSvwugO9Z
	Tz++UqyKDiEnSKo7eFnEdzIJhWP6CcN8frO4jUq8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259c7f3e2-6f6e3f03-3e9c-4262-9d3d-cd8684a1e30b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba12f19520c0305754a46d43fbb8be1d25efadc1f186c1c8c9ae0ff818400398
Date: Mon, 1 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659363652
