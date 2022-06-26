Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181502F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656258412;
	h=To:Subject:From:Message-Id:Date;
	bh=N2LDr5exZFMi2YIPTtGPoYMTb3bdyEKPtIFFD2sRn78=;
	b=Elwtg7uXh2+XTKgeOJIrhTslTAp12VkR24IGz+5DTFufHe8NUoYXUBMw9qOXIr0y
	wo8ULEqjJmy7Y2uvYeK0yRBuZBFTnosSuE085zYzWL0bjUA+/dlqmqq/bGKlmFFcJjC
	2TJfA7E4Lgum84oc7z4PNAyUbnSIcUu4j0XQbfLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656258412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N2LDr5exZFMi2YIPTtGPoYMTb3bdyEKPtIFFD2sRn78=;
	b=M/TFhnUqMPmjUxeGTd21pH9uwqeXg3mV+Fl4MCFSPrF3sdkGATt45mCqTJWBPiGA
	z3kS4QVMGqWk9656YMr7gamjmBkEY37n6xPY/2rPgnLuZlyu0JzqrxPkSvOpkVGyNzU
	PMmty87+XvZzytdD3mIdzm586D5y3BopOPPSznXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0b1bee2-e5e7be7d-7f4c-42ea-a898-5270e2474c87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3284faa238162797b3ef83fc6d624e29c32476b29195b42d5762da88b8c45c04
Date: Sun, 26 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656258412
