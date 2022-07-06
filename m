Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CC07C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657100812;
	h=To:Subject:From:Message-Id:Date;
	bh=yOmZGO9QmS9hi/Jc10KsmH+8NEl0BMKKg4zbgbLPycM=;
	b=BbktdSZX260IBf5HM2uIWpqdntNk85G6M9m98nZeXXSMl35ew/AvWGdC2gpev42u
	rNkDbB9a3+D9C1+zRPOg9qr0bGuZBplrqJl0u3R8HMDX82Rw617rAgobZBOuOWJSWAj
	powwHrKfpQQL+EsgfZkOgP2n737ZcOuhGCjw1Tvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657100812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yOmZGO9QmS9hi/Jc10KsmH+8NEl0BMKKg4zbgbLPycM=;
	b=IxPjhFpKsvyW60M4QWytCBvtZ5BxTgMfs6wfg4hKBam35b8dnAlCLzQqMOp/i4Ku
	DnkGgK+vSzRxq3bcwaIoR+cqktsm06tHeZ5z3xG/uL59QRLmb4ENHbAFNr4canSiPaG
	HNiBr3LorStJk2Nc4zZBvZdLUvKe9E3EI+2TGS+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2e7bfdf-4d75aa15-e51d-49e1-82a4-af5292d963ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72249c855c24e16e2d3054ab520a9b721710b02264fd8139b09e249c99357f10
Date: Wed, 6 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657100812
