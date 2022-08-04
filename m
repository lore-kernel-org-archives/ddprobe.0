Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848A67C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659633053;
	h=To:Subject:From:Message-Id:Date;
	bh=l9fTOcB8h7jhdtXD2M5Qb4MQGOSNkFloPmJ4t8Z1XjM=;
	b=aYt/vEQW7GXFDji6V14BKXrXbinCE2vG81zznV8JC1K+K3PnI2/uKOty35lKOQ6n
	VAc3xuabp5kS8jNTGXrwuVzywBUivcE9+SHLI7BJLctHNbc0BHD+vpsZyhopSBtM2U0
	3GLtZUNsyo+wLPsqxuPFyladNp4u7YV7Zwuklb8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659633053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l9fTOcB8h7jhdtXD2M5Qb4MQGOSNkFloPmJ4t8Z1XjM=;
	b=Nb1VnFfVd1XFF9MoE1IOu2MiBqPU63iZN/+tBmX0Y7H+XBJLo4nh8fIqOgLE1T//
	53MOgdYc7OpolXRaFQfX9BUuJBkR8H34RLysGKNoJ9gmSTI3MLUToRcJfVJ+Gaoe5Wq
	psVKmS7+Sp/B1RFkXpXdpEoQa7bg0iBmHzoCPGJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269d6abfc-2d17f3f8-dda2-4eaf-bb6b-49590abd0afd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f56fcaebea35a4ff8c4e119aa76f200d1a9ea1f32d55cbe3f26d131dd18e9363
Date: Thu, 4 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659633052
