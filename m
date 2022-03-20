Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B8B7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647738685;
	h=To:Subject:From:Message-Id:Date;
	bh=99RyXdFzKnzqv3W/lJxz1M6ykLZomfUy4vgYqhBPo94=;
	b=S/POYtnQavhmrWBGXOWpnaZA2GpQVjR0/6Nt/nTrwiQUKmervsunAKZDl7huxpUf
	5epLJFodEFbOU4yaCs+zjhUXSJFnrdcpyuPVH7vxKw2zp7m5yyHqhLtXYl6EODpR2bE
	TsiJwkxFUf/OS5zR/5q4id8JwDRrdmyugBftmDD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647738685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=99RyXdFzKnzqv3W/lJxz1M6ykLZomfUy4vgYqhBPo94=;
	b=I2HLMOmR+wCrTA9/B+oKuQR+YX2e5vfqspi3mJyT5WFZ19uenBdw45aBeXsHP1/t
	x5jV8G9aURACcBTP+PeB7YcsEloL7QnTBtprAcYq3P5dLIIEFVg7pB2DcnSVxvxZzjo
	/8dnedq8IZwMCK6RglQhbeMRJ0GtTAZh5VJ4IvGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4e1055c-96e16b19-b797-4b19-a2ab-fe5caeb4e9f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3e202ffb4e3c85243c048d0268200a2897aa777544355ea45a4f3611be7f630
Date: Sun, 20 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647738684
