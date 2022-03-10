Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43B618D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646934684;
	h=To:Subject:From:Message-Id:Date;
	bh=GgCq1mO1hZUGdKqVaG+Y2EUVdPJGWOyirH30L/G/R+w=;
	b=dV3e/ELsv3ZqkQm3yspJDcmFf8jnKswS39B3W/Ejx5xqMYACc5q81CyPw07KOhwG
	3QlPdclFCnDTTBHuZMCQwH7hZl5C1/jd+kNl0SWbwJ/rqMMz5Jv0RP8kkT7GeCa0MWv
	GlnOGUsex80E63K5MmewCsq7mphn4YuuRYQzZffQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646934684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GgCq1mO1hZUGdKqVaG+Y2EUVdPJGWOyirH30L/G/R+w=;
	b=GM/NHcnOGDAX3ecoqDSo5PB2/q4QKs9P1CMs3qtWBwTl4K5/NH6IQnCbWa6t5KHN
	HTAFZ7sTUr0v9ghSN27MV17pL85y4aG7SQ9EiDJOP9hOl3nkEAI0DW/THITTTVQpcEu
	VBDI7Z+Tkgc92/Uo5AeRTK5pRYV8ss5xzF0U1d7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74f4f497-853f9f0e-ecb8-4fb1-8ca8-b7528904d917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cccf1568bc0d5df3da250b1151513864953eb083936bdf0683cd7ac04c3f0a6e
Date: Thu, 10 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646934684
