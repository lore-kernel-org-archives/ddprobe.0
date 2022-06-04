Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD511103
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 06:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654323059;
	h=To:Subject:From:Message-Id:Date;
	bh=BUvTItvF2C9NsoENZcitAZCnB7NKSHOf5iBpylbUlz0=;
	b=Sse4qYI5YKozgQROI430uvi8uYmXSbV2zP6uZtmJiqnwjj7uL2I/X2AnPBXfpaum
	c66pXrLibKSk5isHFFnTJh2ReD0SbBMI4cQh3l4VcndcItRxT5xtD+ZfOMSq8XBhS+o
	DOZ6zV32qlgVasoG2ByXgg6EY2Ez5gK2X2OGdqjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654323059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BUvTItvF2C9NsoENZcitAZCnB7NKSHOf5iBpylbUlz0=;
	b=kvCGd68uM5cLf3yoKtViZXHYJeW0oUO8sHERWUU+nmlsNCnkt/C6nFt+lCZ5zLk3
	cHDcbiviPU4RkN7E6SaEo3QVqQxb1broISDTTMsuWjVNwYBJC88Hkv96jZuuxIfx4fW
	U49GbJm2GJ37Pd/KnuPyEydBLzcq3hJsgFLhlEQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d569a42-a8ad8c88-1a83-4b71-86dc-9e42786a1af5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 615a32cb17cca2b275d7516437ec874d1bd3846af1261b7561ad51f0b5ad3986
Date: Sat, 4 Jun 2022 06:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654323059
