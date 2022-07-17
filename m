Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D68F62A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658020612;
	h=To:Subject:From:Message-Id:Date;
	bh=gjeNkUg5hO2HuzeyItLsUzUhIZSM71hU2IyqnTI1Cug=;
	b=WqPqCt3niDetoaaSe72JO9rUnu2UonP95wfbLKx/NQG6K6vaygmxScriZBubzqjM
	7J8ee7AX67Pxxl20v3zJFT48FstZo//MNkob3LeWmYiMzRiCo8OazOS34D1HpUCqSOM
	GnVBVf+nrXTLH/tABQi1D4IWKVnSCSnZgRhINBt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658020612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjeNkUg5hO2HuzeyItLsUzUhIZSM71hU2IyqnTI1Cug=;
	b=PCWIYRl8OAIOHWlyUg7wA2JBBAGC3sgyEZnaFwuTjTG5U3TXX/9Ue+AfOAPIR1EL
	Wqmju1wZ+Hym7IQFhaQxWDrwrsM3Q/3q6TDgm/vTKIy7zIIGTvJG/St3YboxfPNbDJu
	IYvre8lL2XMi2Sib0W4RJOQHzeCmGAoxBnR4f41Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209bac8ca-271cbcdb-86e9-407c-8b03-20dc3f7e85e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27d409f8ad4d8cba2b6455135bd0ac5f423e3cfe4e71667860f7e879711f24ac
Date: Sun, 17 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658020612
