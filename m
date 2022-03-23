Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0977A
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648000584;
	h=To:Subject:From:Message-Id:Date;
	bh=N0/fKXx1pioOL2VMuCfcRj76FO1r23sS0+md8KPSnAQ=;
	b=IoEZXhFmG+naS0hXF6NK47qfsmTkr4c2erex5CMkno9Ll9NUTYkkK+D2Sa5LFTWk
	jH/1iWDIj0nKnttPQDqyVOLkmdWBRxhWM4oEub2XOCXrJBmOYcN0UpM59ltQk4Ryi55
	+x4w8HzbzklL6P0ONazrnETHJeQZ5vjHRetn41H0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648000584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0/fKXx1pioOL2VMuCfcRj76FO1r23sS0+md8KPSnAQ=;
	b=Sbn3E7jIoHCNBP3vXOw9t3Rliq7i5axaFtVEvncBr7gh5BQbq1sfZfE9JTcECU/P
	kvTzDpBRxpvIDuy3GBoLmHvhSzjL8a7YtNQ1dmdgRUg2fBJNBDs7yX9zk7MBimwxLnH
	e9NQTDNJxHYHnaUT6MZgRq5tDjxQwL1UZO8qWy24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb47d4c0c-2788c6bd-c4c8-48ce-ab67-0f60ea70a1ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c72fbd76cc32b7ad558d4381364153596f44b64e2845fc3118d39017798fcbd5
Date: Wed, 23 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648000584
