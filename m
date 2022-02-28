Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DDF4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646011585;
	h=To:Subject:From:Message-Id:Date;
	bh=bLepXt9FJrmdIjgUdh/G6gn0h3vsdR7MeYaVsJOwwVQ=;
	b=I2pDZOyr/aN7CExDF/3bv2CSlI5ls6FEcDD8GqXng8lC4WvRMgWlI0/EufGrnn5h
	YyLBV8L9ATwI3GAanqDoinDXQbtPJGAgN/oujN7FKZvfFNvfFt5ROPgsBvGvWRS+Qug
	Aht/9mM5YBSCGjvod8rGts003FG2/oCsqVSlq6yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646011585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bLepXt9FJrmdIjgUdh/G6gn0h3vsdR7MeYaVsJOwwVQ=;
	b=ObFgYfBCL4X1R1dSs7jSprdaefQQX/B9W5UhtQspL57nSt75kLVCx7E1TMQ0atL4
	IIKkEKsQz6r82qLyTGP/e7Sjk+RDYR90X81ri4t5Nl0Zdfqq8lpXif//hMvqgvAxi8P
	NQ8To/N+JcHOPKWWuWLUuhUe79XC0YJALJhj8Xn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3def913d-332a68ef-1077-4056-8ae1-43854ec757ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce5e3b4488c8cb7026f39c94b4b16ab186a6bb734393fd44b5a0e3105b37f235
Date: Mon, 28 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646011584
