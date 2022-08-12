Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341582F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660338052;
	h=To:Subject:From:Message-Id:Date;
	bh=CC35mMuBgOyBNeRKYOuIp13vD54H6Yzfuaqpsk7GSJE=;
	b=hU/11TiC+oSJTUnw1UHt1H++07hs1bu7USZR4PGf2NMg7yBs3MrtsvcfGGYkeyLv
	JihNTWyP/Wt6pg9/rMtiC2Xi8vUYzPHaOncngkCmFejkZ05Fk2Q01wTkMJ80nIOYz0m
	bT5beMTpKRaD1R/nA9dqd2YGTogUBitxHGzuoOt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660338052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CC35mMuBgOyBNeRKYOuIp13vD54H6Yzfuaqpsk7GSJE=;
	b=N8egxUO1rxpqrNcGff5W2OfEdkylIPDNtQgfhUfSGs7Y1qTF1Ehas65Wwtj7/tLE
	MwMIEJOs54HH1aLuDg6kI+FvzQIXuX+hUO2WEiJSsDDf41RiqMMTVJJSNBbP5JYx5Op
	umuXkSA9cXLnj4heTmD97PqjVJypOcJjgFX5+moQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293dc1dd3-0c84f009-a98f-4200-b1e4-fb7044fd15b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1b13742e1d490ff62e103b78fcd7b0d356f2f49e25d133334ed5d37230afa81
Date: Fri, 12 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660338052
