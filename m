Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608934A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647554484;
	h=To:Subject:From:Message-Id:Date;
	bh=Th9IqaIdZZlBezQQgtLNpgApNLaEjsgPVGHr6ZqNL14=;
	b=a+2tkG4rYe3NZf8obtuGSVpXs3PxVLmnypvfH5Sp8aPGjKyzvTrMuCI7QYZ3FLKz
	c/AiWBOO3I3NTYgwoyipcEuMuTeI2ZV337E1ZVpF22Qak3vp9bJ3ME+RVtROLjYj0Pm
	jimuOXy1YWUnwmjT7JJ/uP17IhDfpECIMG5tJG/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647554484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Th9IqaIdZZlBezQQgtLNpgApNLaEjsgPVGHr6ZqNL14=;
	b=gANFkD15fqTcsPZvugVgHuBuo8rhVeLatmGPxAdKsYw8DH4ZTAWprCENMgraCrmE
	cQJQVDfFXvgdqvYIWhbJfvwl6DYSbXWct+e73qLfxc2gMlKJFGWEP9JkXu5b7wc4PcF
	589P3fYJjqnI9OHR7w7HYBf/vZ86cUzxXwPQHPrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99e65a1d-e701b579-92a7-4c0e-a030-b5d9966d7d8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 956fb5419337afda2e240c75165723bde60792185f14ad1e0c98bc72c13f8478
Date: Thu, 17 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647554484
