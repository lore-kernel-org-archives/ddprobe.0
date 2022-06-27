Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81D12C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656331612;
	h=To:Subject:From:Message-Id:Date;
	bh=S+6WEhjEVRzcaSTdUlpl0zT+nh9xZQ/peZCYIDXFm2g=;
	b=HypTiD39p3+vDGDqi4V025JvNnbCQkVkD0HWxqEq0uy9RAb/FoxFkEanWFOUNuim
	PzzmGITdYkU1W50p3kwISdkVWo0AfcVMCWtRsn+mmpibJL6JFTGcbl99DoP3frfgxqp
	lmR86sUCIVRChXAZz3sxvdmOY1FZdD6+h1MlN/o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656331612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S+6WEhjEVRzcaSTdUlpl0zT+nh9xZQ/peZCYIDXFm2g=;
	b=L9b0L57Y0Ai3iZtm+5pY9BtXaCaDNKShuDurEXjx1QWNiKRL93RjQWvF65/7va80
	EyCFWaYAEO6MzI7GMrhX/8BtmA6BvgpibHSdwJxoNYKwF6ubGKCV9woTw/gvhfStcv4
	SfdIv/dGsahzIS0D8Q66tEolJpf68o/L6b8i4XEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a50eb083-f359ac32-4cca-4b3c-89a7-81df2f530480-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a7df1a92ba164c135cd7e4e867ebd01a424661fc7409df298f39a99a70530e0
Date: Mon, 27 Jun 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656331612
