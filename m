Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A469E4281
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647084684;
	h=To:Subject:From:Message-Id:Date;
	bh=+q6ma5u6Ux5IbZxsRzSwNEaaomgoGpimgNLajbEfz88=;
	b=DnhBwYqVks9SKTOeN3jezeR/hH+2EaXW/vVWTanNnRRNUrhMYbD0VMLrZxIomu7H
	KH3DvoOoFsAVLhvZuakta44EC/z0Bhmwiaj+8HlWnAOQc1gfoMSMQ7ubX/07wdTe5/N
	BJv8u4NWeLwHYGZudxkLID3iLuUOnw/ushP9w8gs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647084684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+q6ma5u6Ux5IbZxsRzSwNEaaomgoGpimgNLajbEfz88=;
	b=akqt96ndrG1P7j2C+GFAnaacXEMaWQMcwANOFsBaGDGDTfRZILFzPc/r9iGnRSwP
	aXLBh1rtmazpgCO83BIHEqz6/yzNoFpXBLPh8fXEF716ozbiaf2aBZPtohsHnX0BxMi
	7ptDkUT0LI+gcRBjoi17EwjWl2j8uyG/54dDciRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7de5c634-fc7eb0e8-3636-4ed2-ae9f-59a2c0af5149-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 852662866eb4117e9b019e427bd2768e3b4fc60cca48021b3bedaaa7365db17d
Date: Sat, 12 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647084684
