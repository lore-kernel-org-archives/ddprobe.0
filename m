Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371A21389
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656744412;
	h=To:Subject:From:Message-Id:Date;
	bh=1h6cg99J2JZwXGf8wXs1nDH5Q8lzoA/z8THM0kE4WL8=;
	b=MTEq9k6NMzsowSmGvKTpJX3NLD+4n0S9aFL91OqQJpPaBLfittV/VjSCzGtkg4cw
	iM7KxGGGDQAGkvSEvJPALRHg6L6ZNxNDLSW0bAV5JK4nEz4Kw+X1vwYcvf7yuPBREhd
	eygNY6tNye3HdGqcPv5525fNOSQB0mWnDrluUyTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656744412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1h6cg99J2JZwXGf8wXs1nDH5Q8lzoA/z8THM0kE4WL8=;
	b=LiGblo37fJUej7uunPEL/WLjubgOUHNZj8io50ffWpfQA6wGA+ohYjIR1tHCfVwH
	YNqSPD+Nzj/XH/ucthqg2ypvxLtp83fbzPDVlH+JoIflYRTdMqbr9zLN12fDiIuFF3q
	JuwptOCimrqMj3hdRVwBlLPRuWjg0GJ6tfKDmgv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bda9848c-c89375aa-8d5d-46b3-ae3a-73b2b44b5a49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 380b33738be10cacf83600f24cb3470bd7e98d2069b583f3b18d7116a2696918
Date: Sat, 2 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656744412
