Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459E77F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659576052;
	h=To:Subject:From:Message-Id:Date;
	bh=qSMPFbmO1RwFWW/HY5rjBEzGwbxlmpmCV3rAN0Br4pE=;
	b=QvyOgk880E3MeWzZVSvx0FIiwG7ki877FLbp6ZsmuEA1GhURqALAkOyKexSIpsp9
	BeFVnvFMmFgiG3fFkrSnQdyzmcdFNm0n9hB+Qrb+Y9RAlaVdzKX7OVphqxNV1Q+qUq0
	tQWY9MmryULbQ6PqF7RyTbrYTcL/hNmYNi5qD6gM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659576052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qSMPFbmO1RwFWW/HY5rjBEzGwbxlmpmCV3rAN0Br4pE=;
	b=jNXEStqHTdkAQpnz1kkCYW9rSWjekudjQ6MyuEIrawC0iHbez9t1cmXypW8Dzdq/
	jrxlcTQMChhsn1DuHBgnw7DWHtQYNXWxKy0TlASws7YLj53419xFpBVV5OVYTG8HRkE
	EB6lWgs/wv5fK1B0K1XQ0EJgm4MUGQqpj1DrYx0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826670eb41-1f94f321-a8bc-4e58-88e5-38c92e7b39a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad8956c16c390ab1d5b32035d523844d70661086e52902122dee2873f93a6b9e
Date: Thu, 4 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659576052
