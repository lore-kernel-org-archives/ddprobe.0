Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F107F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655454059;
	h=To:Subject:From:Message-Id:Date;
	bh=+4zfh07ix0nLqz1iD+Edaavl17V/yPsXa7Ho6p3UoCg=;
	b=ANGkveQEt0wDsQh91XRyT6sX55lCOLOHQhSnfGrU8XlIw1+jFPEiGQPMC/R9G5CH
	V/J3/OF+Whgi5DDtXZz23bPqrlDnQN24S/ouKjZ5H2ZMWbmKQGGrUxL22eU0LHJ6aWH
	TrwS6rb4eB7MZgVumAsCf5hvYm4GH6TiLUOeBJpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655454059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4zfh07ix0nLqz1iD+Edaavl17V/yPsXa7Ho6p3UoCg=;
	b=OYqwg5pT2oaMSZknWZ79Pg+bjMc53oPv5B86ZmS0npqC3L+v5Nh44nyOs+4BXybl
	u2QeXC4gNyiHY3boxOeZIa/eLCstvuQUOJwvn1cm692V/S+CjRc1g9OUrDn9GisJ+Xy
	h79Vzc4LARrhn/LQn1Ql+VIFKeZBrvSe9eGr5W4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170c04af0-d1852a97-e990-40fa-be18-0c0a51575e5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df46598e23a6f605d966e000062d73317f5e7e9e932256ddd25d871d9761d46d
Date: Fri, 17 Jun 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655454059
