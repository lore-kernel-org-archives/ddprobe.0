Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5258A7B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661041252;
	h=To:Subject:From:Message-Id:Date;
	bh=6t3nEvYYL48ijnBt5SXY4ezpTIeZhAYhgByXeIkAmvo=;
	b=DKlgJgd/KQeoTWZV2bK25kcjjX3u9YwDyN41j00U3xVstbOOeq8hMM35obKw4o0L
	HZBNGSUR6Efy3/yU7A4MCdldulGheSFH4B0AcyCLfe0EswQxcrwEATy/tixmm+nKDTw
	Ns6nf5H6YGVfFp2UUdBgriG33zd0s1oSGTUWq6p0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661041252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6t3nEvYYL48ijnBt5SXY4ezpTIeZhAYhgByXeIkAmvo=;
	b=P9Xg/QHMhC3DhLcttnNVEe5L2aIk+A/DzTx8wUZSapzZ3+NgXfTmdZ1dvqFCJZCp
	1jdVedebJw8Jjo/cUwy6EzHpBK6hPnKP+pC6FnHEVyL7yGhNrqh3cJIbMPWoRBHU97N
	nsCQ1ySLFu9B7/GrH/4GjSqb3Xn2u7a74vDtY2PE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdc618e1-96241523-2bae-4795-8593-b2ed61c8ed2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a50acd0b24e9fc770356bd42950c25a9568ddbcadb13aeebac72742a87214e
Date: Sun, 21 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661041252
