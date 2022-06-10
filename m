Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745547C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654835220;
	h=To:Subject:From:Message-Id:Date;
	bh=B9oL4tu3PaAeA2SaA539VdTTK5hJf+rosdcjtlz4TyQ=;
	b=h91BgfUshna0pyaG6KrpLUWDUCpCyUwe8YtfoyTCCyI15VPp1UCLXhddYRdt1SH4
	zATCYWK+pJhwPbRYXiHkMCxX1YBidmIA068URe6JuTOoyuS7EaIupo4LfHSu36V/yX4
	1Xyg+ENSgEEYywFa3dO0u8/2nme0cHfcd+66PEe8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654835220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B9oL4tu3PaAeA2SaA539VdTTK5hJf+rosdcjtlz4TyQ=;
	b=BJLqQemzg8NNXSvbt2yjhs8phIqOzMoMGE7KwurC0TB62TKAWmHkw7Lh0epda2eE
	IqS2GFON9uE0cJmkfEGSh+4x5uAYEj1qx0eicOOdR+B8O9n7nxVNuBP1/9Np+AsJ4Si
	TWZpNw2yOv4YXGSfia2P+61T3emhbaMDByoCUkDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bdd8b67-9c4dd315-e317-4f27-a49f-6e2d4edc00c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: febfbf9ab3b28252c8c57dc9f9a003992dca5b99306dc9a981221d45f6e72f94
Date: Fri, 10 Jun 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654835219
