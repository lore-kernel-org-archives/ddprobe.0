Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB11368
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660386652;
	h=To:Subject:From:Message-Id:Date;
	bh=ufFgPezTrS3T18E69bAACwQkficxzkoT4uv5+x5DHfA=;
	b=AN+tukOi+8AssPAt1c0BpeLVJKJrxbpqf/hUcqaVhRZWmVOY/eGFogFMMStw3IGG
	duWLrLazwSZHOEQb/fESo0P/Dea5A0YXVt9JOp3zCGCKuf2Wbe6NnobbLK89qFTTgEW
	eu50uQP2A8b1lap0foIRK9mdz0/ATR0sTkb0iIT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660386652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ufFgPezTrS3T18E69bAACwQkficxzkoT4uv5+x5DHfA=;
	b=OOPf3x9pPpjSohpEwlz98xy3p/SQKwAg4zT7B3BwfKTyKR2FgoUzQq1Dtdi7lGf+
	0f1pIyn/A2nlgEwuBwqp+dC4N0yqSQYtNvFUCf9f3g9ilbNBIGRm+EATxPmN2lKiunX
	I+QrAR/7T4E1KdmALT/bqRxlVVYlP7ALyURmyp2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296c1b178-e003d6a9-f5c1-4d4f-ad48-d75ed5531a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c4b487953c29d94bb4f14509ea7fd241475495b8f92403d4bacd5979eef2df9
Date: Sat, 13 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660386652
