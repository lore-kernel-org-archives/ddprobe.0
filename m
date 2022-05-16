Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA53D813
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 01:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652665259;
	h=To:Subject:From:Message-Id:Date;
	bh=KrC9TckdbHSx6mGRw73xpT/PAUL8NLJQGPnZZT23GlE=;
	b=iXUohQFbPvuqZCw3Vtnhs7zTt3sTSKXyBdRvGxC4O8HpvU7Ligpoveh0iiH30ZI5
	RXgtFqOaV1I01rgVFFHjtcvZqqFLNM1rdBomD56lIofCSCjjCXFdHVXMF+uYYbHfHvU
	r+ABDK6hkpn/KHW0RsMzGpog6a1Ba/+qlQgOpJg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652665259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KrC9TckdbHSx6mGRw73xpT/PAUL8NLJQGPnZZT23GlE=;
	b=NNTNG/CuWq1qygLauIrzCythNG0IkMpDI4RacXHbBsUWL8mYDJxeki38jlJ5E+pl
	R5HBfNnxHJIHBhjd4R4dxRT/aEQkEOh0HyDl/ImUdOUKEWoJoI9LZlxSskts0PO/5yb
	bb1wX4/LpPa/RxkTKesDeqZTKFuBDE5tNVbkFpYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca8694fc-1d1652e9-9fe7-4bb8-9b8e-7e46978e525a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a698fa98023171a412d5110060049b072887ad0b296da789f667dc22064257b
Date: Mon, 16 May 2022 01:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652665259
