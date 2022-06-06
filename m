Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0EE28E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654529699;
	h=To:Subject:From:Message-Id:Date;
	bh=gAz+SFgLpTNQBiNQdzqpUoVgArK9udSNkSYR3Wuxi8o=;
	b=kooiN1DbGqGaBry8+nPk5Cb4H1ZXJlMjutJHXGnve9TM/FUDk+306nnsw8ZetSoC
	s0LkDldY5MEKcoPvRFY1A542dy3UZ4kBHUxxfZ61q34WWu9QfYDZzYl0XNAx6K/SYpV
	1cszHyoCAE6sk/9eLwGFAV04FhiNw1EzfUmR1Eok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654529699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gAz+SFgLpTNQBiNQdzqpUoVgArK9udSNkSYR3Wuxi8o=;
	b=FEir3i0U6EmMdb+wWGFDYWP+Lm0WroZrcsELlQv4jUJEDzJJZKnpHTVwQxM3mJz7
	NYT3ZDjrSnf8qgEDXsXd96qVxwsXWAVEdirDPis+4eTF/EY4bubMvj3KtdcTSwx/DpS
	odPP3XzPJqNjAeA9okPWnjUBFp8jUmizsTnHA+dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139a7adb1-ee66f00a-b825-4436-b320-3a2447d7bb56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac7ae58b499dafabf56027932018f5e5815b64a8dc9c4af447e1226a87921a12
Date: Mon, 6 Jun 2022 15:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654529699
