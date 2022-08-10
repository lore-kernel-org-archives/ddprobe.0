Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1F4A02
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660174252;
	h=To:Subject:From:Message-Id:Date;
	bh=aMvpXueXnMSD1Nye5lQfemprvfx24HOWw1eFbtxah00=;
	b=j5y+hcJg7XQcN8+pGU7zYRJsodTT9sqOOZK3EXMEofYNHoASbr6v0MWhdLet1NwW
	xwx9WTw21pcVyNFrHt5VN7pY/bXjn52AslDitDQJoCWHDRQoge7Pa8+gGo6JJFTChgX
	pMNHXy5IEJ/DoVaL+fUCj9v4gGpuYXvMWe8RVFSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660174252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMvpXueXnMSD1Nye5lQfemprvfx24HOWw1eFbtxah00=;
	b=QRsXWP/I/NqRbntnKgM5mb/n6luuQC2zSsh+YNdSss8y1k5olv5g2I4cQy6UfLoB
	RBXU+f9Ucj7C4TDO7AZhBjLqqZX2ezWu3YiY3AU93vsoANSCezP81MQdihpgjRcvLkg
	uleT1+7VZj97U3yrryaUprSNh49XlqD1gamvsxB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a18ba2e-dfcdce4f-3c5e-401c-89e9-6c3865946fe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 962c5981b227dea6b7d1db7379474e0124b4a829fefafa14331522177d4af16d
Date: Wed, 10 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660174252
