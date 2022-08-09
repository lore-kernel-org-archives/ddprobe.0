Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A7E15A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660050053;
	h=To:Subject:From:Message-Id:Date;
	bh=1ijVFHluas9ThVAzjsholw6buemYDjBF6nqH+9TEk9w=;
	b=akRguAWJA2kI93vsZpnQUMR8hga3U6wo//u7qSgB8zTlBmvsGO0CetrpqZo8hsIi
	HN4/7yOEzm00lK4aSoPgmrC+390RiGA6+WbpLtRDC3DrTQnE6ctpDfsJysoIuyhekVJ
	41T/oPkYwKLtSaYAAD5GaaXm5r1uHpiuSbDJqqnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660050053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ijVFHluas9ThVAzjsholw6buemYDjBF6nqH+9TEk9w=;
	b=hGzvQt84VgJKeI6B8X+ZT4jk+hzxdj6187F3fBEgaKGxGYkn+/Xvk5xmfGYZW1f8
	ygH3z90w8CJpL2RcDjWL1q7wp66iik41hx3W301OqGq8XFieNGJb9WdtkyI9qispvfu
	oVsQH/B2tNQOxIgrFpr0J85BOi6Kg1Qof+oBfrYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282b195f4-9e941967-bb78-46ce-b39d-d324fd981c92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b1232e6dd890ea7d834af04a839d7b711bb4c5d3d31420dd8626d74872a2717
Date: Tue, 9 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660050052
