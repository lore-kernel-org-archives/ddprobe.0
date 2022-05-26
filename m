Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167701384
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 22:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653604319;
	h=To:Subject:From:Message-Id:Date;
	bh=223htfpso2ulY+PraaKSIjcowocBqaVGVzyQG+8eJWg=;
	b=CJRJVgkI4iSMVFzhRQRSwy4ToPKEinIYriSEfYfaB2uU8POF6S0npNo53tw+mqEN
	kXpiZviTmoD1koIU41PwixfOsZi6dfniLNoiMpS7mVLqlM0p/pIFhjXkJg4X43PUDmv
	RKJgW0hC9QT53C12mgjDMf26eouwgWUdmV9/gAYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653604319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=223htfpso2ulY+PraaKSIjcowocBqaVGVzyQG+8eJWg=;
	b=gofZ3WrRRmcQfyc3MLWG+2J5Q9sSFFpvzBZRziMuZsLQ94N/1ShT0ju1ooNcLeUU
	VqaTZ4aL5i1Z2zKMY0AxfInwPBDG0Ufddq1ius5X8Fp0kWu4Ku1ySge6s78ae6ylhIa
	dQ/vY0N4UJt1N4te8Ua5Ok7aDUqIhHKZoo+cM6RE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181027f8091-519f1332-3a4f-45c4-8479-89463b1e6dea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17b1f5a2c75b5fb40424c40cc1a83594d27f2fd6b0e964ed441421b9b45b5110
Date: Thu, 26 May 2022 22:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653604319
