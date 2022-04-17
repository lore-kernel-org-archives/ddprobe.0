Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A36629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 11:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650194218;
	h=To:Subject:From:Message-Id:Date;
	bh=KnXp6njNqYIWBEaEFYbB7LR2J1xDTVnp6ao2Eeli7r8=;
	b=R3FSAqhF2C9zAGNAxsFEi3E0kD1yYnIow6y1qvFB4axq+uX0ZunYAdlezPfnyoZl
	571vkQYIV7hk+7Mml9/XztlIN15/T4IO/vRqpy2Sr9H2J14p4mTdcqeGsA7F8ESnYCe
	6nt9+NekiqPbypZF3rg7QSxMiU8blDRfLwotPTns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650194218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KnXp6njNqYIWBEaEFYbB7LR2J1xDTVnp6ao2Eeli7r8=;
	b=EXaSEBbrdwg61wE7fy4VG11Dq2RS7B7px10fIDGYVwKV6wzSDXUNaH+9QJOwgL8o
	PoYgiMaAERz4M57hs2hNGBUAISHp1E0nQlehTQFLxlhz9wEqdqsBU3C/sAqZ60yXGyI
	AOeBlCx9ZWyjb/Ih6RPszkp/TFVEJwB+TMxze84w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180373d7ce1-551425b7-05fa-4809-a579-926831ffe9f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34382e60898a6ec93a6637c2a4fbd2bf19e437055a65b8e8bcd1ddb715a3a9db
Date: Sun, 17 Apr 2022 11:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650194217
