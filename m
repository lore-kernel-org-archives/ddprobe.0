Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87DE5393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658260613;
	h=To:Subject:From:Message-Id:Date;
	bh=6RZDi86eV/jFwEM3U1MUsZDUipAYP9H160TB+NjoUDY=;
	b=NzG+FrYxv5KUZUTi/TKVVL+uAlLpL9QO2n8XgTH839xrw74Szc9EgfUYdIPqmm0m
	n7Ac9c0D2Lmz+5yKKA93jxtavUkc1X3IFuf9woEwtTDTM8HjxRL1RA1WE12s1UnNlSS
	aDa0XILbY1f5zgNTBr8qkKx7hE8vsEJL1p3F6r9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658260613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6RZDi86eV/jFwEM3U1MUsZDUipAYP9H160TB+NjoUDY=;
	b=DLRMKTq4/KxS5LlMTVG+mHMFOuy/ZyRD5GwRcL71VZ16Hqf+bmadgZBOMva9r1bj
	FSVUHXWHI8szmKJq2Gm0CCLThqrJZNzm4Eefwmfod6wfsv3x6VhJhnfdr61PkCw6ADP
	qhiQJcXo68KxJ0cje+35aPlO0i7+ePAcJXg9jQpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821808e4a0-00cfbacd-a0e2-4c60-be38-f4f1557a15c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f82367d27242f426ce0a32eea811298aeecf484596d18a7f4d075e006df6931d
Date: Tue, 19 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658260612
