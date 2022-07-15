Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7646D2FAF
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657918012;
	h=To:Subject:From:Message-Id:Date;
	bh=bBNM0knJ6PyyOpU8wUdxsW3NKsdIhfiQfviPJuLCBts=;
	b=F+ZXGyPnzy5dQCUs5attKkIGwVCDi4wBd2wTqLRRX/Kp2CVmKEHtqYaFSY8sKiTt
	jMZp0e2lsmTvHpqlfkwQplxyCfibGvyGuV0gjkj1+yS2mJZguJ9kPiK0il9cMZY0CGW
	z+VPZJivNDaT9O2p4/ILwN3x0BUsnfoHcb4M7YQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657918012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bBNM0knJ6PyyOpU8wUdxsW3NKsdIhfiQfviPJuLCBts=;
	b=FzvY8E14kVXb5ydJKlttHStFwAhFmoGtB5Ueqpfr7RDYzH98JQC7MTKzmjI8RFom
	xmY1C1ZfF/DQ89PHeWyg6QBPXD/lOnUkpVOly77VxJxc3e+J71eVC0S1bn7rs1RulSS
	JJi//roSR1edm4xrc1xXsFZCZQlZCEy7Jq2GkhhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182039d3bc6-928114f8-fcff-4887-a567-2dd15bed91da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436085ba1eaec3853e9af4acabfd2d85794fd6ed38f1df0e69e6fcec429395ae
Date: Fri, 15 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657918012
