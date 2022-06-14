Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C941851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655200979;
	h=To:Subject:From:Message-Id:Date;
	bh=JQbJwz4d15MWuIlCXw3B9/i6GZygFy6doBP2IWVysMw=;
	b=gjzjh9jE30hajBboIdIhxWeeJM4j9yZU8qbrdT8dqkRK4jZLHRk9AI6eDZ+QxpMO
	rVvphJzT0lEAWv6YxG+qJ3h8o6Pwy3LNMqU00Awj5QtVlnDGarVA+C5J1NTe2Slnlmb
	lR1GkLcsBFnSmbMZ3MmxNTcs3axJ7PJBV8G49wwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655200979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQbJwz4d15MWuIlCXw3B9/i6GZygFy6doBP2IWVysMw=;
	b=E0sXaPQFqdDA3i3V4rDeuhn3w2X6YtpqG6AE6NM29yWrDlT/FuZCbLTxqwvzRtzE
	RP7ZaUb61jqotbsBwW9xcslGDus2vV9PL3dl9CVpXe1O8a3MEv+zVZj+mCmDfJcSk21
	5r/hUn6/ZpKB1FCBxcLm3GYVOaJvfjlXAliAz9ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161aa9951-5f34c896-9cee-4257-ab09-83737662ad70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cc94f4d785d025a3e1095339e6641654d7e88f12b812c6cc32f26a67fb54447
Date: Tue, 14 Jun 2022 10:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655200979
