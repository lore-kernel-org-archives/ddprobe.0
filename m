Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865616461
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647984684;
	h=To:Subject:From:Message-Id:Date;
	bh=8WR/aZTNjqM7aAUqgYWaGZ5D6vdCRaJ3ej9HYDfz3OY=;
	b=aEMAJXW77CcYiLAEDDJhDrip1z79PUaC7ZNsoHt0SOCDhBhmMkooi2ry81mpqJUq
	0TALPXVBWTV0kc738nn6Q+UyuXWtZSNgdVFX2MneUmHJ1ewNQr/zyC8xQuj1n0aw99N
	pjFFlYRNQyw87tPQ4BgsKgZQUPVSPRJtD/cbRCZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647984684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8WR/aZTNjqM7aAUqgYWaGZ5D6vdCRaJ3ej9HYDfz3OY=;
	b=ki1+M2kbyb3DpqErCCrnWI8ZROR+eMJhdmpzbjhV+wTqpiang7yOQcRFH0Fn4Omd
	Hh0EgEJYaWWw/Zo+rKlVMWl/J6OHffl6AAH76I3mpJ8yLddfA2jouIhDbMzZoFwNtfE
	mdsfK6BfH2P/DXRViR3DMel6E3ah727+S6+ips5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb38aaed9-b71bc2a1-c0dc-4b09-ae01-55df6869b640-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea603d40de2d1bc1c86f1afc1d2c82b65c607b166af633fd78276126ea0a8ed
Date: Tue, 22 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647984684
