Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3503FEC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656114412;
	h=To:Subject:From:Message-Id:Date;
	bh=RZ0pM38w4iI/dIaFPifTDN1BPBNAGY71GAivmlzFV0E=;
	b=k3dAMvN4atG+cLsJgBonFd568F74jJRYVK3heCy0iQGRzLFpUB3TFZy85IQVZBmh
	2wZriCkrPhvEg5tf6ODwb5hrpSZ3HvQX1Ax1y+MY7NXDz63xipe+sSAoRiRcK5nOMyU
	+BVODkCxcnPSZyyLZE1Ho3mQZTiNdh3fC+zoOxfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656114412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZ0pM38w4iI/dIaFPifTDN1BPBNAGY71GAivmlzFV0E=;
	b=a9zQw08UL1YHW2BuK1fW87uL9Oo6gkcjqINoH366VKAIcuk02j/wmEXhBkwACbo7
	NCkJzrTOF+lx8EIYsUpGd4br6tL39Skf3+tes4k6cq8ik2mMb4RQ2sBBpVBPGuDkseC
	KU1fOMvKxo7RBs+QDDe5qw8JeQNPyGbtOl8I8aBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181981c7afd-be4c6507-f138-4d45-baf0-89a7042f42f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e01ad536b65962ae92e88616f299c20b566e3377465d521219af46aeff0161e
Date: Fri, 24 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656114412
