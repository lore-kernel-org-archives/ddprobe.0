Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AEA2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657404412;
	h=To:Subject:From:Message-Id:Date;
	bh=JwR41SlxoOI3Ifx0rTSjNhvQ/KvcikD8rJWDZJFF29o=;
	b=gJOrcbXugXMQfHBpug9AYkL4YTpgjZ5RMfb3/DcJsjOYIgn96QDEZQFEKx39gXko
	+0k/FGSSfCKi1O2oWE2UQtTG3XijhTGmRGSDWrsxO5eDI2oYRorJqbMX6Rxd3nvajTX
	wwWss4Nt4S5wWwiXoY84Q9s5vmV8e/XLqaN8rOSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657404412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JwR41SlxoOI3Ifx0rTSjNhvQ/KvcikD8rJWDZJFF29o=;
	b=GAOiEW5Bmh3vxi6rANcM//8VtA2ot7nLIIVTfhO5nGtig6p+ApCf/iVsNV2od9Qa
	gJi1BlCj1qRh5AHGONT33STsfdh7Uf1zfJAWvvhdx8g4gj49z2bHqjfPnQa88E2cuMO
	qa6QiDaOTbcwXHRm6NMQCy51piZVRhlfgV5Mj9M8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e50051e7-f15fc30d-e2da-4d08-8e08-d58ef239c424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90bc28d444abd7db8917f28ae91ed54bb14b5255f44dd580ebdb8e261025a4c9
Date: Sat, 9 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657404412
