Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28872817
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658063212;
	h=To:Subject:From:Message-Id:Date;
	bh=fUxAwlpqSHw78zE2BsecG4Npcy6WQ+0OaoUnWXVdaWg=;
	b=UKxY6cJLiIEFarJQEwW0016MpemAKb+ewPaTg29FJOjv9IAj+R1JuQWI2LJA7v4u
	PVJGk+Ez8dKdcQTB5fdxHxPwlbtPr4ooYb0RSEiEyeMx77DaE+Q284/JAVdvQdVj74a
	vtYVfPooI79mEVWkzV5srZVtANlSUnoNEHE04VYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658063212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUxAwlpqSHw78zE2BsecG4Npcy6WQ+0OaoUnWXVdaWg=;
	b=GRC7SVUQN2EJVkleH/4X6c/b0n/6wkE6BKjKe0+3K9AAJbU4MnI1xMrR6PZjCt/5
	/8OdyPAyBIJwIhLiwKKqFLBVX6y7C+vy8jyd6Z17LRJG1kwtWGwLZr+A/zLX+kM13zI
	RFLNZifa6X3t/sq9/f609BZYLso87bO++ZiOU/9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c44cf01-9027790d-663a-4c69-8989-1a50195cd2bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfe47b990fd127fa2c49d0aa0c951921d4d266eacd8dbcd20312d063534910f4
Date: Sun, 17 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658063212
