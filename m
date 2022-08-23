Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8336166E1
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661286052;
	h=To:Subject:From:Message-Id:Date;
	bh=a8T8E6MesAGjWi0VKUX2Lyhu0TRHIwBPb0OcyzCPFNg=;
	b=BsMCnN6t99i13edBlNir6uklHcYNn/P88Uo+fomuoPoj/qFPpXPtFmrQIj7pi3bm
	BQ7m5fez3aCTTdMfCULg4mvBiQJFs4ncfx8x8tCXN18/JEYcDluhLDagIPi89nfE7Pc
	UY7PTzEX0wbWS+LnMs1rk/tnmRG642QnIRBdlr14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661286052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a8T8E6MesAGjWi0VKUX2Lyhu0TRHIwBPb0OcyzCPFNg=;
	b=Q6e3g1PvvK+U1b/CI1qUnulcAAzn75Nf985jWDMLtbV5MYy3iiyTxNXVr4SxBcf6
	/C84C/XXi7pK/1VF9DkkvpuiixrzNYIcjAp2ScP8K2u+dEFNMPL7WdQhSrYWBnvt32B
	DbP1hvBdA/UIc/RcDwe/ti5yYNKMZ81vddeH4k/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc5d72d2-c2403b8e-ae36-40e1-bb1c-df0f7d6746ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a46e8c20d6500274637f3401f2658a1034103b34eff85ff3fa8a05d1261bed5
Date: Tue, 23 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661286052
