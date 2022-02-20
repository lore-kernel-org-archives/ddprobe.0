Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1395CA1
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645390284;
	h=To:Subject:From:Message-Id:Date;
	bh=o1sHNoJlsUrGKaWAu6Yq06hdcYLU4jW60YA9HCuAFtw=;
	b=Kn7+u+aB69zuGYVWNSj+gSq9SKThiaYgt1/VPynWLZmqUchC2P8NbNOBVS3zX9n3
	ICJ6c+DoixKnKk1jm0pt9wjo+898OSyds0KHtsISfbnVR5x6mHTVxw4jZ1d0AlRGsQY
	Ge4iuqFpjn7LbM4PGUt3OA74mbpODIVs04LcpUPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645390284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1sHNoJlsUrGKaWAu6Yq06hdcYLU4jW60YA9HCuAFtw=;
	b=YdK0u07rHLAHZhCPzipdBSre2tzPcoJc5xNTvb2eZRZ4qsP/1Iv6MIIq+lGiefe4
	dmcUw9J441ukNowkDeb3ZhCX2CAvkq4DFT92oeibYChAHNC1JrSCTCs3L9+FZO4Bg9y
	ICYW8dImYjvPVXvI3ZRES8K6/HUfcrWDaSQaa3Jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18e747ba-d0b15510-f80c-453b-ba55-2aa1a4dea38f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05eb7419b68865a1ab915b3af985b4f9d7e1f73e4688ba835b2bee099bcd7efb
Date: Sun, 20 Feb 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645390284
