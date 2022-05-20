Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D6933C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 22:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653085319;
	h=To:Subject:From:Message-Id:Date;
	bh=DaQYpRw0GT1Ww5Owwmovi95Rs5/xeXUpTRDjwsl4fPA=;
	b=L1W5udR4o3nK5Y1CHAQIJ7IDd2BbRdJTYaa535nWtWYTgH0PGJfbaoM93AJwn6V0
	2W5O1988Q1csBitXflWkzvttRlj+GEqT+IdzxV4sS5KbPcc6dCFVV86520NsdBv4Rdr
	823K1grSQbn+A7dvEx0UQqU/PgrAGSXg04uzX8M4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653085319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DaQYpRw0GT1Ww5Owwmovi95Rs5/xeXUpTRDjwsl4fPA=;
	b=GIW6mkRnmEeDmwLt6X9zS/w0y7fiSAJjWLVy0juYFayroXBGZp9Gk2aOyoU4kp6w
	8wz689PEg3GPCPGHaYYGC0QtGLoUefAVoaVAc+NXTjsGQTr4MVlo+0u7hPLyUXhUvOj
	APhetxV1G1+b42Q0k0qOh4ow0FS9hYBX5Smo1J24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e390305a-d372230e-06ea-4298-8d7d-379318d89e99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e5a8c69086d102f892e14c204e0afc66fbe4654e4294587d447456d2e1ffcc8
Date: Fri, 20 May 2022 22:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653085319
