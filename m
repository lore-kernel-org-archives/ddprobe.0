Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8E17E7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 01:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652406119;
	h=To:Subject:From:Message-Id:Date;
	bh=hTzO5FrBuTpaFK2GoxBFDz/TRazNrNGUEDE+acNLvwU=;
	b=adDBYkDkCS4MK/CF+Z0OZ2zrRSaCuBMSY3oP7cNCZRDYCvuHLMwR+CViG9hjXbcs
	PCoNSvLf8aAdc98aar9isrn5K2nJzVRdEKxiAJtA9W2hk5yNfxvwiARV9SJ8c7aC8gk
	wj6tktC6W/imWtab5o+gj8cVdrIUl97peiJibU9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652406119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTzO5FrBuTpaFK2GoxBFDz/TRazNrNGUEDE+acNLvwU=;
	b=Qllbuyi1Qsz4gGHG0iQFGOUm0YtpOAf6r1Vl59ihxLeHB9MqMETDmRMI5GBlcG/K
	Ik5ksWpht60qxs5earjnNOLXSUt0mT12uGGIqwqpdSq2J4TXSDMl1JCiD43stPD1ZnX
	bPYo3r6L3tiANDIou2LDlP/I+u8jvqbS4unFl4t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb146b65-da5be5de-c2d7-4c28-b377-c2a5d71c2dc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d580da9c152f7e7d1f482d11a6f70387d835719c728f350f4de0a6ac2baff42
Date: Fri, 13 May 2022 01:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652406119
