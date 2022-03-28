Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD34182
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 00:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648428898;
	h=To:Subject:From:Message-Id:Date;
	bh=Pd/4kaHBnoUPE8QBiOeyZ/EvBFDELCxymDpGWkRkU0k=;
	b=LRi7UR/3MU5O4EJOmsWGcUGayjTRcvPReotcYD84UBBZErxC/hG6M3XBDHbjWnjY
	DYDuJu1qH0QrftOxJ3oTeF2CMTWS8Xh587k8kWu9aHMHuQJKgdQZ1nhsK0RZVjjBcU9
	sNvgoYrWyx9Wh5whjEhvh9GbdeTBJY+/dNDOhZ34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648428898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pd/4kaHBnoUPE8QBiOeyZ/EvBFDELCxymDpGWkRkU0k=;
	b=I+Zf6B3YBf8lmmYhmKtszOGUwn9B7OyHYH/CvjEsucJcjT3VDl7OiNN6hg2E6p8A
	s8djxfNVNUJHTlVipljk+Fbqs31YzodimEBP0whqeQfvE2kXspSx2Z0ABDcElI0k/t4
	GuvuA5taXGNWp26JOWDq53nGPtmnDAuwYs1sFdoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fce04d80d-f7f92904-9964-419c-8e36-034812746306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38dd4d06458e9e1dc3a3d0c10418bd4744624dc09a1673b51e86dc46ac6a48cd
Date: Mon, 28 Mar 2022 00:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648428898
