Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E047A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658014612;
	h=To:Subject:From:Message-Id:Date;
	bh=+FO5fzF9Jo1dMtmX+QqFNcgGz//AeDVefwsMDb6Oo9A=;
	b=V79tqWim654NoC/5lmXW7p2UasTw4woDnPMryFGmDX2pOl8TYmLMOE07X1oloukl
	R5xY2ODOxVjklHAfFreIX4rnmdJOWs+0NYGDLmYAGNuFvqBgepkqSz6DUPUaKy82PfR
	rdfSRNhrxn5P1GNLDO4XESp0yl32WJajQaOTZ5o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658014612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+FO5fzF9Jo1dMtmX+QqFNcgGz//AeDVefwsMDb6Oo9A=;
	b=Y4dHh6s+8nsHIouN8UI6aW59nsZuPodBiTmmmviKVKQNODux7EWfD9dDQH1bvefT
	ceSKgCtytQF0he/gx6RA2x51GIE6m9i4QJOmpCqccOq3uDSz4O2Cplvt13hLe+lE7Qm
	Wpurg0OMNmT7D2Jm0kx91nBWFSvE5g04+RLgNdEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182095f3b6a-acbef71e-2abc-4405-8231-86136cf15d7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 303d22e258bebaff065d76b6ba391b12c39b8bca946187a85768b534fa780d1c
Date: Sat, 16 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658014612
