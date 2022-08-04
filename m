Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDDD7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659575452;
	h=To:Subject:From:Message-Id:Date;
	bh=vz1hiwTc+DOzP4Tgk/iA4+PDZJACi2BHb6UBmgIGo58=;
	b=MlJB/kjVbiHA1n4y19e9B3Pa88/9al2SMbxRi3Ss5jDSX+TRGJHVVmjqES+c8aKr
	YkHWtc7NzGBJHOFeuC7HoDR9Fi6gSDS+nWwHDluSddxossJCHVn1i+QoLME5+xH2by6
	vv/FkO4pzioQlaauz9Is/1CVX1nEMXBHPAxA+pD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659575452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vz1hiwTc+DOzP4Tgk/iA4+PDZJACi2BHb6UBmgIGo58=;
	b=jGJhmf8WoRP0SvLo87HlpcVRS16HgQ2w0ymU2iZNQxjQz3sCby3k3ugH6TUuU9N3
	n9xnqgkAv1D30p0LfMDdFMbxFMN4hgZSZyrXlyfKsF8Ea/C6nsm4R08nbLDBP/H6yPb
	L0qIJGT1b7FYpdlBK39gSqFhms3lmtD0rk3soOPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826667c37f-8073790e-7d35-4d2a-8810-bddea45375e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acc7c0deaf1735a34049c4b0730c4308007300918f7c4861d80019411046c869
Date: Thu, 4 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659575452
