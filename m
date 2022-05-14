Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA39624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 11:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652528759;
	h=To:Subject:From:Message-Id:Date;
	bh=yAshYGvsw0B5ENsaGYHGBGaEHs48zInTbNrNmPyCfQY=;
	b=SabIEioobsTqFfD8UuYolwwdQHuD/L6g7g3hKC82Db3N4DEiXkJRSxBwJAAbCLM+
	FsRKYdnrWRTmK3SRbffx7tZInecdrk5u3LadkbaUskQhUfCmQwF7pxYAXbeSBidOFpJ
	ViO3fpsM0bAU5N5Tn4HBu3+TiugSM41xgkGBdHcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652528759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yAshYGvsw0B5ENsaGYHGBGaEHs48zInTbNrNmPyCfQY=;
	b=RWfiMh4x1/TCv1K55/FyYl9BbNYcYmKv3FWzfdSsXIzIXRZSTslu3L9nDVsNlail
	+vOM/Kh+U9Yl6rqLOQ36W6JlwBEASuROGbqmweETMrRzzC0qOk6/Em1DtPxArMoBEzM
	86hbViD6cWFLPLYGF74Q3x3wHAFtTVvTglJ5lDSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c263c1f7-de81513d-c90e-4990-9015-ed2b07bbeeb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5f4586fdb4eeed002bc9537b822b8fda659e9da3dfc38aa08ea0296c4c78b6a
Date: Sat, 14 May 2022 11:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652528759
