Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A802A4F
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658162212;
	h=To:Subject:From:Message-Id:Date;
	bh=GrMYHxSRMnG/BVGkas8olYyG7i3RziYIGzat5lpJL0Q=;
	b=NP1arZho9Nw2Zk5/RgW5A6N63jURICnS2qcNJIrZRlNYTG020kbKBrFdZgElpC4g
	wWHhhQZRx32SqlKB2ownrpk6NYk6ujq4jqIv7ZkTZvLc4TBwABRKpNJhrhl/+VBAst0
	gI46hlLl665lAZjoRk6C8Yvr9y5KnpKAhK80+UxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658162212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GrMYHxSRMnG/BVGkas8olYyG7i3RziYIGzat5lpJL0Q=;
	b=Kf4pDPABWGFm+uj8/PkYHm9hcyGnHxOeQRLrt/n+EZOogE0G3vwK50GF7oZVaRcw
	YIOp2M2Y0pfw4N5vI0OkFzAFTMFAN5jyldb+UqiGjC2ad5TmAhtHHO2vKES3ba8beS9
	PHfKDMTkpErdwu42jFizOK0NSMqFsY81wax46KOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182122b6de3-5e762bb8-a5b5-4f0c-b172-b5a4b9054d59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f39ecb27481bf8e2851fa080101b02a6126a3fc3e77dcec2e1be9d4fa42b3c7
Date: Mon, 18 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658162212
