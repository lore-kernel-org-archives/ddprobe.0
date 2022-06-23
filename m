Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B6E1366
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 00:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655945399;
	h=To:Subject:From:Message-Id:Date;
	bh=DqQHqWcx8BX8Zi3fP8x/YSRoOrzpS/fCbWtdGOr0wfU=;
	b=PQsZv7vMopWJmo5Ufj4X1cE8YF/xUeSQnZS1OvTEljFEE51/COsFYqFUinTzCaNH
	oLY7Upf1L7m8quiE2f1IGgkM+N8QcJLfi0t2JpPLTjYzaNt6aaAhzsEBaegzfvHrP07
	PCe3EiznJdxtILCPdCn/SWjhhOcY6O2URuO9tHKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655945399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DqQHqWcx8BX8Zi3fP8x/YSRoOrzpS/fCbWtdGOr0wfU=;
	b=At6VfrRwaijafI2bsSCTA8N+03+EGLuYVuOeDr0/NA+8nFiC4/EwNDmqtbxQ/TVk
	bdAst7ySx8tfBm9C5HUEPtPfPQjmZq9b067IlxdQm5Q1jAcee64SxNbVia/6WgxtVQr
	NQZ30gJAWoMyfF2tba/Mf8LKB/hLWB5+vBtmaecI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e098be4-010d22b9-0196-456f-856e-642dd264a276-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a070f0053ccd5bd7db5f6052982d0e70cab65f20f8daf70430b87a40b8fe1e1f
Date: Thu, 23 Jun 2022 00:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655945399
