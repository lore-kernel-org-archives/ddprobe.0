Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B4936A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 06:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652509079;
	h=To:Subject:From:Message-Id:Date;
	bh=mdgsYhtWLjmeywlEuHRjPBq74HhibIwNfoCEAMkP/MQ=;
	b=StKX0Cl5ubIKHhwLys/2XNf4HMJ++UZ5ZxGCCPRZtoWqBCV8fZ0S7GVsIUngiw6O
	qzJ8nxjwiLkNv72UkgEUWf7Ja3f0DuQwfFVE1qN8pq7gtTQiuBWCMdp2X/cS0lT7iQG
	mZs0qCBuHi28vYQfc/xgPTmoftDiLD9tdvKpn/w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652509079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdgsYhtWLjmeywlEuHRjPBq74HhibIwNfoCEAMkP/MQ=;
	b=XW/SlvBCF5uAwnMCHF/Pht3ftBOunkFA7/QkkFk6qVsErOvV6ByTCp9sgJTqnGhX
	ElYJbjY/15rdmYSt0w616HLXQAXL0mvMhEluf7VsSF7QGoYCpoqZOwvZYoax9wu5YCA
	ha/KtEWaVmDPErbnt21iazrR4i2oo/m3zATEIWH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c13776fd-7ac81117-b261-4efb-b624-16d2af60e8f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c24851a8bd733d54f0f7323208e2028ca813ed3f8ba4f16ba44e397ceee2695
Date: Sat, 14 May 2022 06:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652509079
