Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5B87B
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 00:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652919659;
	h=To:Subject:From:Message-Id:Date;
	bh=2HNKKRCDhQInYGzt8jPmk7m66HAk2zcC4FDxnKgQxKs=;
	b=Y7cokpNMr8rljk9J3JpIz2iQDBqidVezO8iJ3w/IcmKaNSEHWljKHWeEUm80UMnP
	fwz/FZRJFKgBuDlqlAcu5APjEfVIrMlJ47w3OSiiniLr7qcBEfeK8ValzjwCg51rNzT
	pj7fmtxpV3Xh+oheDMfgUnqHWjPd5dqpIYkMURiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652919659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2HNKKRCDhQInYGzt8jPmk7m66HAk2zcC4FDxnKgQxKs=;
	b=aovAgkORokeEbvp9awf2XGr2tCouSEMstzdIF8CVJXU27lv4NP0zWkH8Wd2CXg3m
	ato565koBSBVrZM/3lb1XRoVnZVBXm3rl2s5azge9K0hnO+xUdkB9ay7h11cHMiok7t
	4LJGUNVtUEo1oEWDavg9vIGfWcu/aeihJcduIK2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9b06b22-13166742-7290-42a0-b9ab-e9b7290a556b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d437decc3441e6946e1af14ad920091eee1d1ff4d01d30abf0134ec3c1aabf78
Date: Thu, 19 May 2022 00:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652919659
