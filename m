Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB4A362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 06:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654841699;
	h=To:Subject:From:Message-Id:Date;
	bh=JsjHM/ZT/fdU/gpQwlWQecUJeOM4caYAaFjCcRNCkoo=;
	b=HVzbA+FTI0ru4s8Ts3C79NAy44Tv9JDv/KM1E15RA3d906LUBXYwoyre6FnrLyI/
	UFwmfaSGDnL0aWCtrNuAacgbh/kZ64OrBE19T8TX3RMPX5YPyXEorYbngv8wBs5iudv
	O12T4jZD8lb3VXXnKIFLEcLQoGThXvLtfSvqp61w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654841699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JsjHM/ZT/fdU/gpQwlWQecUJeOM4caYAaFjCcRNCkoo=;
	b=II4J12e6IIdctW4ke8mGxlER1/qnCBOHdrDvh8JEUcNPKpveBW7CujjfWYN1ZXpv
	pd0BssRGxZH+dDHgDG7Pm5uhvnG3A0Gy4jwvJCuj+C8ynWuL1Y2H1OvpO9qmVVz6X/C
	UvQtg9uhL9tkLKGnMPHs8cmKvYMEkEaZIHAN7BhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c406b9c-df8dfc9b-baf9-4514-9954-ca85c02d1065-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58e8391ee8521d83fe2b7929934898ca3b0ef7cdea3f626ea994ef6187a448e1
Date: Fri, 10 Jun 2022 06:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654841699
