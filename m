Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A27943C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 08:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655973119;
	h=To:Subject:From:Message-Id:Date;
	bh=d9Xvl6SZsslXOi4W9wMjuVdkAQyY7A6kNpyUEmqrOE0=;
	b=OmWCSOJ7Jf+aKHDiYi98ZXJCAxK659znZj96z6hAEOLwy+n/WbzaLZH6I89gSmjU
	GdAyvwyQOOkdz+p/GYdnw27IDpRZQY58nt9ndlUkfF0IEN901N9DOilBz3zqHyXJf35
	cuWuPeXFSJ+i3AeBL63ExJzSmJw40C448BEzM2ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655973119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9Xvl6SZsslXOi4W9wMjuVdkAQyY7A6kNpyUEmqrOE0=;
	b=EKrVhWRKi9eftNYN6LGZESdIDiGmFFQWtnqu9+YdnDsnvD8vXDCHYmrLjVTHaFoS
	hIrazVlvBAu8IpV2Jap/NmRtxE6IbsnFPUdgFJqv3jyK/ihrh71n1v6Qpc4DI5bBfHY
	ENSKoN03oKFHdN7psxGjwa497vAUK0qz+H+I4aIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818fb0850f-5c9b101d-740c-44fd-9cd5-8fa273f63268-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29d42c061996224a886a0bf36915bbc6d954cde2c2531e3b8cd2578a7d8585ea
Date: Thu, 23 Jun 2022 08:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655973119
