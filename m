Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133187A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 07:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652945099;
	h=To:Subject:From:Message-Id:Date;
	bh=ftBbNxuQ77sw4wt1yW5cslWZ7AiXt+xmGtbANMWsbWs=;
	b=QoEsyg+PB/4dpg7l1Tyioz6iNy3noemSZN0+b6gi16inqBUblJx20SFxc/UL5BpP
	6004oDV0B7aCQZN5YOXb2s/OyLBSEUJm/w8qu9rZWDLGcGoXY5grhBC4GtKDzPpxsnr
	mbIvYGlgfWBzyWi8N3ZYTn8MPiTFdJDng23EUYAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652945099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ftBbNxuQ77sw4wt1yW5cslWZ7AiXt+xmGtbANMWsbWs=;
	b=PV08R2vm368c+/Zt5uhAD4e/VJ0HeEdjHZpb1kjsKUunNyylEen2QAsuXNUNUkXM
	/bnf+nWDWQf+WsQyNFUYgiB/ylMx7K+6IGk0uXj6GKpjEXznX5Y9eIQSn1JE4Q3gb6n
	1twduSmmwvmjBuX4trmU29Z5z+UkpRGlTxbD3oA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db349a16-68f2b407-71d5-4cba-89a0-27242c992401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2893c2b76e60ce0e4c162c0ed1bf8d5035651d4ec8a8ed00716db0386a005407
Date: Thu, 19 May 2022 07:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652945099
