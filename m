Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8052585
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659625252;
	h=To:Subject:From:Message-Id:Date;
	bh=wsVp9ifk3jDOXwCSj3ia68B6QVpHGwdemGiNzoOzBPo=;
	b=WG88fTUFZSzCTF6vUQ5NfKiz7MPmGPCGzOuBrHhUfJWaVnKcalsH4hI007ilaau0
	6k6x2TUjfti35Str0SA0wp3WEoW8XbaO8i4hidxN2Piw7bnilTHzrDZ+723IUOYMwsc
	cXF0wFXfqPrGPrYVmjHLRuizZ3DTu4okuVdZ8B/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659625252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wsVp9ifk3jDOXwCSj3ia68B6QVpHGwdemGiNzoOzBPo=;
	b=PUcmpQCL3/v+vcDLxnw9gH5nX1S9LANgar7bP03cAdPIGil7tMWH1RwVInNQVOj8
	RCRHGRWhh3xu9jVYgoUi3dSuknIl2NRX/GSnwirErLsKBZyDkBje7JKG9bf2d1TLTnO
	97FRf5Q6vHFRllJxOgcL/EhYsqJ++XsOqv81tpMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182695fa6ad-1bf3bbd6-0540-4c7b-b5a0-dee4565db04d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71eed3507c8c4d16f567f77937607c4ce8db706fa1f24de7d4f9ee5510a9915c
Date: Thu, 4 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659625252
