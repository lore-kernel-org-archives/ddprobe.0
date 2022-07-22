Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39EC28E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658482612;
	h=To:Subject:From:Message-Id:Date;
	bh=BSXyPZNRIJNqgSsjDX/Hip8H/e0YREApvs+shR2tPE0=;
	b=dVkFGZJxMU7KE1PwJTGGlnWQHtxiYrLTB1hPiXQ//G4ggeM9+7RVpEvvgpbTe/eR
	StP8aq7+3ssQFNj9/LZT3tAvSoeqoccxfUpgFCQm74owjmle2c79ao3am/g8LW5Lx54
	xzPUIRdokbvT2dZgEkNuWZVakf8wHhBrj6mWv460=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658482612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BSXyPZNRIJNqgSsjDX/Hip8H/e0YREApvs+shR2tPE0=;
	b=ffPhecm4UNRBWged+QK+t+VAIvr9unZyg6fAJB01cw2jfsSrmgbUzr6BlrkQC0Tx
	KoWvPXjWK4jH5+S6bkz4w4fQMenHGhq6aq7/orlZ8jxvXwS8YaD5wZdV9KGccsUdIwX
	R8dxwcddN8gz0XRtgrHWZq2xXhCYHPid7fglsjMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225445824-ec4622f1-6503-4db2-8da3-22bdc7359a63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1885a13bc211e7a4bb9b6db365e1b13fe9ff2a3a416f83bef768d8e53762078
Date: Fri, 22 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658482612
