Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5799F7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661351452;
	h=To:Subject:From:Message-Id:Date;
	bh=kpi6dAyMzUHekEWfw8FiTVoXvcmWHT23cKHJyk5/dyM=;
	b=AUanf218KxETBmfa8u9xvXt6t4KYzWl5OvTSfhNSv56nkPUC+8mFdkqUbo+aoT6V
	EshSEcWIFGDPYAhkE6j52DrzMUWh3dq3348MNeY/7t+FRvhyxc4qL5FmB47463bA4rO
	4SkSjCTHACRADqm91SgNE7ra9ocBR0Zgev3fZGZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661351452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpi6dAyMzUHekEWfw8FiTVoXvcmWHT23cKHJyk5/dyM=;
	b=Q+wkg7SNjSFaPMKWXfKrMTxmWBVrofO4o9iMogupu6UtcaxuizYgVax3cBpueiqB
	5rPscQLvmMX8+O1+cO/Je6/zEpNYBn1uYjtIzQRmkjJqm+fLDNcaddl1gKBqUIVQEfx
	Ku/FmM7Z3xA68r/ZyqquMU8Tg3nRn5lBObi7r6XM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0435fa9-95eb8b68-2197-477f-b0a6-89cbde96db80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7368105df7fabe4ba1fbae72b354c76c93b193311f9c5e2bd0e1dc93dc4d5805
Date: Wed, 24 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661351452
