Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73EB136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654341119;
	h=To:Subject:From:Message-Id:Date;
	bh=ubShLUBGgrKRI6B6SX2KgSdN7/Hcxb4OphUQ2zBidqo=;
	b=WF9LlHUC6aQWZXJIBPNupwMlMKgEZmHGQbuesDBRdedN6bENk7e2FMyfDMkO5Dtg
	lbKUsdwu5gIvOOSFxufBM69sxqtWi9ZoEtX8nR0nQ4mEkRSTzkk4X7CpdhP1sLX//2W
	oN+Iu+LNUSDdiryity1dACn8Z5igNkhPkyoFBdPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654341119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ubShLUBGgrKRI6B6SX2KgSdN7/Hcxb4OphUQ2zBidqo=;
	b=Z/sS3DekcNDg2mic9tksGNIkMIbw4Cyj2laTBj/L1ir/CVEqFi6PimIUdRAq8TgG
	jN5zo1tLwtIKHrMYSdf9fytzAEcvCnLMgijbcIhdAd95OmowK8yLeIRI8HJh6iM5ZOo
	xzZN3Aj8w8RrGzMnwUDjVv64iSpubYchxLoNFvI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e6a2cfd-fe550c3c-e904-4488-afd9-6d552185839a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86ffc7fe1ff5a19d6aa967ac8cdd6c53dab2f8503c6f45a40aa6f3370615b122
Date: Sat, 4 Jun 2022 11:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654341119
