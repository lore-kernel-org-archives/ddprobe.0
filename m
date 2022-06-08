Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A257C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 12:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654692599;
	h=To:Subject:From:Message-Id:Date;
	bh=gj12f1VwLKRRzPCeSSo3vsaDCMd6MjjN0A7LhJHpdr4=;
	b=ZCzt4LN8DBVMiqTfVICdH5e38qB04VKbvVhy2ncp0N4Qe2JIKJf4fz+IROOu6R9P
	QEcZhp3dHNniW9rR3ZWaNqRVfXpRlhprJsjNKZfDhkv+ymJ+zDfBgq0W1msLLFCX9/e
	nT3TlMWsmBV+OyLdv32mBQb28z19snom0lXguMuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654692599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gj12f1VwLKRRzPCeSSo3vsaDCMd6MjjN0A7LhJHpdr4=;
	b=fJC/lHYVdnLHpsKuvfrXC4EkS9ElZ4gFa+T1/aYDFNfkIDLmJeufCq6WqQQixBP3
	izxPFhV5f0xbLYeI5G1lhu7/eoYWvgG1R7KuMh7zyB9l63JP5NRooV19W4RiVJpZx3h
	6iP1RTL6l3Quoxn1wD7xWLOVagxZ3hoPQg2VWtbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181435d5626-a3ce701b-83e9-4eb6-89f7-9894d39ddcfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9be3e5279ff82272211e2daddb4e39fd70a46c4d160d13923926ab1cb994be3
Date: Wed, 8 Jun 2022 12:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654692599
