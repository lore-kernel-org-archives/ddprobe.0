Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740737F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659366652;
	h=To:Subject:From:Message-Id:Date;
	bh=cFxB3wVBIhf4KSoQDV0u8k6FKScMyGjHVPCaEUSUqn0=;
	b=aZSpn6M8ryv5hKPBK+EaqygnVESjnGfegFjr1xhxHW9eUZcBAJ+/r2jUbQ88qYts
	CwWMhFCbkCiiMx/nukYy+VEJBb0BqN5fzyjw0P20zgrI3o31HAoFDOKhUFpBosAtV8S
	5pIEx4IhkhsI/jpZnq8M0vW3yxuu99N9jZbApWTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659366652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cFxB3wVBIhf4KSoQDV0u8k6FKScMyGjHVPCaEUSUqn0=;
	b=GWqIPpdR6h8VOEAjC4US0bCA0t8tH2i7sfZmvOpsrUDoMovYF98vdSILC88dlk7f
	yNdVasLDoWKnR2BgQBO9IxiCUdP+iZobDs4JqnrAzlEgRPn2xhPyKjWxT7E/lXRRjrZ
	IAg0ghj6rk+y3/U3wQRYAZwjN+E59kege/F12s84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259f5ba8b-89b90f41-40ca-458a-8428-845353822477-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49ccadd0c24f2311b010fabc44ad3a0a00c9a7cab3c195cd1702a83a6f2c0e22
Date: Mon, 1 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659366652
