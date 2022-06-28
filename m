Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70807362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656375412;
	h=To:Subject:From:Message-Id:Date;
	bh=TgDI3DEmAd+jLU2wRbYbhdQKav/TZJtL7SLAqZRxaiU=;
	b=exKdn7Df01xtrtzbDkLCHmvQY5dX5k6IhGxPv26/WAlZFTQJbC8eZx5v7EoP0/7G
	+nm8PlSYbB0uMcJrby5cIZIEI9v91iWMspEVGjjmPg4hnmv6TTpd6yJ/wh1LMDsvu5d
	ymgR2anGauABxpbWQ4YgzueZLIoVFF/w3Tch/BeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656375412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TgDI3DEmAd+jLU2wRbYbhdQKav/TZJtL7SLAqZRxaiU=;
	b=EYcjmFUHD5gFc6cDBjjMQied/DY2uxX/uXzEfkIV/lqwvT7FAYSPm3cNJYUR/gq1
	K5yZOs0HlitM/b74RlNHDpgf9AP6TW9p9oagz9AUfie6D0fdLn2MWtiRLLZqXZHJE/a
	SPfUoTrLEVTkYJi1sZCLtBqP9I2NeBGpu9jz2usQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7ab06c4-ce03d837-45c0-404b-8ca7-550a449d329e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42fc7560ce95187f1627e758592633e9019a36c399be9ab14066dfe78de5cadc
Date: Tue, 28 Jun 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656375412
