Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA045391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660666253;
	h=To:Subject:From:Message-Id:Date;
	bh=LFen+7U41JW6IZ5Zu9Emlyfm7xHOxnbrNGdSskReh0c=;
	b=fBqCHMXoizYfqwbC6ORd4oT8CL2jHRk2KtrIcgubh2f9j49I2iLUz3YKnQESjWQu
	c0l4gcHpesKoJPM5Yg8+2a84cvB6EqdTh+jUQ6h6ghMrO+MdvAaxrN6eRemC19Jh5C1
	u9owx4lIDEd1mg0H9vDA20/Tc2v0a0zDfQWQrz4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660666253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LFen+7U41JW6IZ5Zu9Emlyfm7xHOxnbrNGdSskReh0c=;
	b=jhgMiiRkdb8QOcHzszX8I1xw48ZjSs7alHGYnPnd0tHOEvMxcOkJAmWrBG+2HzGQ
	g4MLMaXtZWbkgpndLJx65joXbXxFYUB2WreCbBQIKSUZA5/dNxCeurw4KWEUZm4sX8L
	vN1Rv075+t/XXCxjd0+ytDEsS28y/5AZwhqJC+pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a76c0d65-15168ae0-d7c5-4a96-a1ac-d2d51c978da6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 416ce72f702592dee1166d2cdff396394d736fd4e44796d4efb02553c745e9a2
Date: Tue, 16 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660666252
