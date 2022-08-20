Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EC0257B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661002852;
	h=To:Subject:From:Message-Id:Date;
	bh=XMtiW05Eo0uP62seN7d+Ccmbn5XWklcOxM6cW8/GjcM=;
	b=KMrEJ0SyUtPvro7CGGdsh6aKHLVuOsYkHgo99JbCHvwn8ZT+2sWL6DreJP+S369W
	QeGO4w3FO8rjKOuz6Fy9/5NL1OwfsW5vQrDoSWUMGmhlxOU+gZiQj1qe/DGWSF2tjft
	/1m2dRoe1Ileb/t0CrPzy8qIYYFGFJQxl8HvTSZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661002852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XMtiW05Eo0uP62seN7d+Ccmbn5XWklcOxM6cW8/GjcM=;
	b=eQRcXpSiIlV1neA1Cw0bGl27CK1aEmmZBJ+O2J/V++gREhG/ZLllk835YmSIuesp
	Lvj/EAI5H9n0TCdRexRbK2AZZIEyFCslUDokRhR+qy0dhvAOErdZCVP/IOh6VcokEMv
	YPjqw9vXZ25eDqIuUu0JPXQNeBsLkEOXp3oxEzkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb7c2948-a2a45613-7ea3-430e-8840-7c3f50f47bea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50f19ec1d065a03bc006b624f137be58dcc10afa6f12a854cdb6259d65b6cf78
Date: Sat, 20 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661002852
