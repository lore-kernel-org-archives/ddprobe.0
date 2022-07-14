Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEF8600D
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657829812;
	h=To:Subject:From:Message-Id:Date;
	bh=XVtaUasX5c3bgoIM5vpoFunJcoaEx7hSV/qUnx01znE=;
	b=jT7Mv+/d1Xu2FfMufAC86xaIqRKqzFvSzHD2ZaKzLAtzdeSJABIRVVtjT04ZilPo
	tQl2SldcFyn6MFo0ZoDLh09jxzxuhOgmkUL2cbRbML8FDyKgzLcbU/HImVLHMWiKcEN
	cUKXmn297BfNNyhrEfNA83+z8ysUFW7Dwv9LWfbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657829812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XVtaUasX5c3bgoIM5vpoFunJcoaEx7hSV/qUnx01znE=;
	b=enp8lccDPXX4Jnymx1M+FJQTXF1NpIYXppGSMBhLrwjVrsmkw9Ry6k8B5URheQxE
	UT4P3e0pnWgq+y8aiyPRCbHbmEI80ne73HPxMIbiI3IRJVLrvBLvKD3d6qTLwzH2y6+
	6/eUoC+tN5myaj0yppPjx+wL88DxHKNa0oyNMunc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe5b684d-b41c282a-8a9a-404b-9b00-ad115d5e4d36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70a3511cfd47bec7a393a635a06a21656db2601cd7e8560cf0053b42b331c0ac
Date: Thu, 14 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657829812
