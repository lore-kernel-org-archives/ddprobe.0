Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D013A2C
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658147812;
	h=To:Subject:From:Message-Id:Date;
	bh=IJ1RSn+ohqTxh+u2sbd3cDXtfmt4Ybv/L8yRhReU1wc=;
	b=acWwglYkG2BscDOOIA2alNfGaz0N02DM1ho79Ds2pBYchubuIHyKF/48L0KJCFxt
	ROrJVPiVEbYsJJHZ26xPeiDLs+D/wmja/cHqh6f6HgitHOHh7bQ0kdOrdTvPE+O5/f0
	lhk/EvgCPJhmnA0IIjIasE5RuF/z81cB3sHwkZDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658147812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJ1RSn+ohqTxh+u2sbd3cDXtfmt4Ybv/L8yRhReU1wc=;
	b=Hip3g9FPY8XP18DkOcqDb2/sX9igakw1ZlI/pCT2uHMfvocJRCx8UzkBkv+m68sa
	pOPGq3534YYvBAezoFLFok41UCKZqZjEwWcaXtoKuC/3Bb6aK+DdepyQbuiMhynCz1E
	x2Wt9ijzA2ss4YqttqMuOopwPJKP+QsvLH7rrmEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182114fb49a-22c12a98-7c54-4ff3-a9f5-e20024951b9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75bd5eeaa2f34e8cf2659537569bdcaadafc07c8bb3ea2befa81a781ddaa61db
Date: Mon, 18 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658147812
