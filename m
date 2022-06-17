Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261EC3201
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 15:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655479079;
	h=To:Subject:From:Message-Id:Date;
	bh=GIeNXMu0yz4Hg+/AjZLhHAE69EBodYxAUqBCIP1Zl1s=;
	b=XWggjkQXO7DOPo/1THLI16BEIxSsAbKf/J64XJnHq+zE1PKoTOT1WXB6Y6Umdvex
	1Rc9gEkdlAnvPto8pNaK1h7iC4PcXZD4cVp2CZCgLFn1rIaKIEelKqPgD5jqApcNqWe
	k1behMLS4RDjF5COr2CO0EaHOOQPuDEOXUWJdLb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655479079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GIeNXMu0yz4Hg+/AjZLhHAE69EBodYxAUqBCIP1Zl1s=;
	b=EiA6HBzUq+qjIWk2d2m1Xu9jaDHXdm7YBeh9YKOMHE6o1xKPtA+XLuf59wDbJ/3O
	Vq6neUdAcI3KFbKUBBiMXhOGsNvRL8GdZkI2Ut7r22QX/T960Axfky4a2J7RWBVrPUN
	eshKoxQfhrzdMPNxtxpKAydhz8WXvMh8f1CUGdQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181723e1193-dc11776a-4729-44a0-88ac-c3011841a707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1451b747967c890937561d7563ad95f9a52dea44ef8079ef8f8bc4f32071d00
Date: Fri, 17 Jun 2022 15:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655479079
