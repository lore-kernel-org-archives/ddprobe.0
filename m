Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648473D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659099052;
	h=To:Subject:From:Message-Id:Date;
	bh=AvXJ19sMBBZMaAjyiJX1k1fV5SaMKVl6AHIdHYNgVJ4=;
	b=b2pSFun0CDu1ffYqHKQEMttfBAAxnsiQXczAPoCSAKdvY9qBTca3Ek8Y681zY2tD
	SBvZdjs8JqBGnDpqXo/NfD6fPERdHNE+ezbOw2wnOCQQO1Q/KoFwYbQJXKp7++uANu4
	uWX/ZCQ1ECDJW0VO3hQHb1WhOVlhNpHuwl/O64z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659099052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AvXJ19sMBBZMaAjyiJX1k1fV5SaMKVl6AHIdHYNgVJ4=;
	b=Ez/4jU8363iP1C157yCufpIclJIeZ6lVYvG4XCuqnWnbCgTnB3UVr45Q75lCQ4f5
	RlcMa2gPM+nFGYPuEfyIqr6s72Q0T6Yh7tqumRXHEJ8471SottfRdnkvJDtAEJJJ1A1
	cYKd4z9B5ggDSIfESP4QeExJQt7MnbSZVnkPL7fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a0279e9-42faf8ba-86ba-4bc0-a3a9-fb1cca23f3f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ed70a50391cf896d161fab2b0b3b3e93b4ddf2dc70e5321910ed2afd16d30ab
Date: Fri, 29 Jul 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659099052
