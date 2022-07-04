Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1444515D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656961012;
	h=To:Subject:From:Message-Id:Date;
	bh=wF0MVbx95hBiKl1zehWkcr2j2nPgc8uDbCu/VGRvToU=;
	b=S6LlRM/Y+gxY1QCJsApOG/h7iZKsWD5oja+FUIt7nGy4zCHuX3cHI+x8WEUHzchK
	ebkyI8OUHyJ/WJNPhgH11wxWe/Pq1mCq8F5nCvXTGq83ew07739UIi0Y2q7uSxxpnxn
	TMYTDjWwf/2ciPRRfSYCfNUaR3voVwoqGo9ToKZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656961012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wF0MVbx95hBiKl1zehWkcr2j2nPgc8uDbCu/VGRvToU=;
	b=EvawTXDxKcLHey4gR6ntRgzgtSV6lDMq4vua5Btk/LR8+9586GVyZc8aQ+gJagf1
	OetOCEcLxR1831gp2EnXrE4MKGEJNKmidJ6jkR687RP19eSzWqqb1LvabkYYIwN5aaN
	CzliOTRqQCnRQw+xj83a5xg2DDDSohgm3m9J0lkI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca92929c-6b661eb9-a366-44c6-81fc-adbe9cf6adbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 109f6048326db018fb3fddc4b57e49911200a5008bfdd69c0043af4de3ca5f42
Date: Mon, 4 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656961012
