Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5687EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660383052;
	h=To:Subject:From:Message-Id:Date;
	bh=WwCorfiJ+mP7JIIyvR0SuR7hgWwZ2Uu+G//XMJ3OWMA=;
	b=Gmx9x2Ch+4c0nWgVUH7yZVzmg1UCfLAZZHZXiE8kLKu2LxFCSAyrJ+pwRuqzWGoD
	i6rf4PIHCHNf/caekVuJ1Ngh4NvpAn3T9URKcIdJJciIVeJmdgRaLkctpAfg+n2DB7X
	jfrdxtgiylRc+35UM420UIw7PtmvBvI4h3X71+rE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660383052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WwCorfiJ+mP7JIIyvR0SuR7hgWwZ2Uu+G//XMJ3OWMA=;
	b=CngCk993w3JAz3uqm4ox9BIb4tMkRH9wvo/1eUMDBsjvCCDa/p4iEjkMGBp/mWbK
	RzVgYAL++UjZE8RyplXktl2gSEJHWzk/o/EznQ8nqoS66z8BW7EJ3DQOYyX785vaV6Y
	1UnD4Z1g8ChuYkZtzRcIjj2K3WtHfC8/lAfFUwLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182968ac301-6d9fdfc7-0f74-4b77-b2b5-e20db97c50b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bf309842c97b09687b236342a20b93d917cc604f6bbfc2af938b2e264876f48
Date: Sat, 13 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660383052
