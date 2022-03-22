Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E67A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647942084;
	h=To:Subject:From:Message-Id:Date;
	bh=5BLjCYlvcs62NvP2KrInT8Hzsq3JJG5rANe7fkIUxqE=;
	b=C91MGvkP62r0h0y1rMRWj4hcPsvCXCN24CNU5JzXMRLQJIKnYCYRnRTkln99O9An
	SbA5iG01dp9wgIiFD0G8eQnGHOTaxiLzyRdszBsBFRgnBh+B9OSPXMb98rBpsKy9C1a
	IYLxxrXdFCp0JqQHa/J03R4Ya9dH0Xk6CDfBbLuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647942084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5BLjCYlvcs62NvP2KrInT8Hzsq3JJG5rANe7fkIUxqE=;
	b=bE0D/JLW2DT226L1B8qAAbhBE0peRPXI0VI9NSpgbEWX3EnSVk3fvW09wO7Nh6iw
	VkcZD9Z4ecWUhXHSif0RvKlpEV5dKumtAiZdRR73FCE/fECvYvHH6/966gV6kw0yi9n
	lG+E5/ORLWLFJtIPfjtrJ8lAX4OQwO2xvDS87/9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb100a88a-d42a8c72-9982-42b6-aa92-d86e91552223-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccc005ae8080881fe472e2e15e71f70a38b65476b3212fd47db08fe6dede653c
Date: Tue, 22 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647942084
