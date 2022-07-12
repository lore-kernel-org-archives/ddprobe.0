Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0C6440D
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657634813;
	h=To:Subject:From:Message-Id:Date;
	bh=33vVr1extJx7NVVqv/FOPJrKEN6DuOj78heZ/0Sy81w=;
	b=ZzlRzBakex7kWBdrd+uUNQXVOVfuRh+zxWl4Q7RoKp7u4hS2aNlPS8SFDocxvXkr
	fdaCarzcp37Pgldtwjc3Pg2eStjuq8wCMyqvuBq8GISRBa4nlafBDKO7+2HHW6VaPot
	nwCxQcPD1Gu14C3wVHQON1DoW4MdB+q6qp+04OAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657634813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33vVr1extJx7NVVqv/FOPJrKEN6DuOj78heZ/0Sy81w=;
	b=gmczXASxWaut4aRwnsFJ0Jqe9owdnljRWzDFIu5ylnQklyC6PhHpBUau67KtTxCV
	gu21FXjIgLkIqseUcV3xEQB5vpDtNV57VPL1lKspPII2zT2+CARbaA92cCqlBGoT9Ts
	OCgZj5Bj5+bh7miUNR+1yLUxTW/n+GTfQqbcNmZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2bbf1ca-f5c40cf0-b76c-47d3-82a3-fe83693f6d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5e361d926b9d6d9d46f76d8c9702fcb0a0f413cfa0d6a5007b35ec44d2c76f0
Date: Tue, 12 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657634812
