Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB215AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 03:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653016019;
	h=To:Subject:From:Message-Id:Date;
	bh=PXfimTRU5zTFDOn1E+IVW0CJ+9afujlOsC8BZBaTphw=;
	b=abbuwPOP4yxHqv4jkCYIo89A5HdZOB4EeGMcUzuXirCysEM6BAfcSSARaruUY1UE
	3vp/inC+YGlbPocYyjDUrIORS9UPKGs0Y6rNFD6qWrAbZ3mwcfQUfVIA0/cK4potvNz
	fAgNEnKPtISUbUw0YulhSSEFUvTH5g//v9tE05lA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653016019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PXfimTRU5zTFDOn1E+IVW0CJ+9afujlOsC8BZBaTphw=;
	b=CWvPDNFXbnJauEmPtiN1MYJEtb9bYPWruJhArfBuGC1pfTGxG3iTPTv4eLz6g5hD
	WT8P8qgid4OHD3/f02PCk3RJnOA0N0P3KaIv9kCPEIbb0yse2v/YcVsRWnFa7aSXS/O
	mKzi8cGLNoBBQZX9ezhaO91yA+olQFtFBJ2xcdDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df6ec180-3fdf428d-2332-4440-adbc-13b469e87c2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a2f58b97c095f425d8bd92fdc078fb9e2a0b1784688e4183b11292829be5c16
Date: Fri, 20 May 2022 03:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653016019
