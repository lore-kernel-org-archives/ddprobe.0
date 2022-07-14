Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2619517EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657784212;
	h=To:Subject:From:Message-Id:Date;
	bh=7TOW7FAFLwTDcf2pnJGG9LxpvjH9wLXB2mydoKJ3Lhc=;
	b=PTiX+lCypN5qtY/fcQ2TYc1eDG5nhCQQxnAjd9T1/Xg2WdKlaKG0JW4Ul+oKPTFO
	/2Yca8+LU19U7OoA5F2pYSrHNoRkHaBT5v3/ae28T6ar1CV3Zx1I+ydl460pL+/Fjwy
	dAEbRD7cZwjxhb6pFrgO6b/bdQ4kWRyf0u9SY8z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657784212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7TOW7FAFLwTDcf2pnJGG9LxpvjH9wLXB2mydoKJ3Lhc=;
	b=EvBThq4hEL2KIIEwumrO1Egl7I8CfIUm5vluXP4Ps2tSWIkq83IUaAsNhVZdvlbj
	E2du4EzA6+BJMLssIO35DEeFQufG2JvifvMyovEBVK3tfAdtpFDt3I3Q8qLWmZv2qda
	3/slJ15kk9yBfnn1QeQgf7+yE9ERwYwqfdqJ96CQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fba39b49-6f0a3060-f7a1-48d5-9e5b-a2b8fced69d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec0cae668babaf5c3a8f8c150a39fa9b31dd9b7a1c50466fe60cf7466de4f9e8
Date: Thu, 14 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657784212
